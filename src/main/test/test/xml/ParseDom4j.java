package test.xml;
import java.io.File;
import java.util.Iterator;
import java.util.List;
 
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.Text;
import org.dom4j.io.SAXReader;
 
/**
 * dom4j解析xml
 * @author ouyangjun
 */
public class ParseDom4j {
 
    public static void main(String[] args) {
        // 执行dom4j解析xml方法
        parseDom4j(new File("E:\\dom4j.xml"));
    }
	
    public static void parseDom4j(File file) {
        try {
            // 创建一个SAXReader解析器
            SAXReader reader = new SAXReader();
			
            // 读取xml文件,转换成Document结点
            Document doc = reader.read(file);
 
            // 递归打印xml文档信息
            StringBuffer buffer = new StringBuffer();
            parseElement(doc.getRootElement(), buffer);
            System.out.println(buffer.toString());
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }
	
    @SuppressWarnings("unchecked")
    public static void parseElement(Element element, StringBuffer buffer) {
        buffer.append("<"+element.getName());
        List<Attribute> attrs = element.attributes();
        if (attrs != null) {
            for (Attribute attr : attrs) {
                buffer.append(" "+attr.getName()+"=\""+attr.getValue()+"\"");
            }
        }
        buffer.append(">");
        
        Iterator<Node> iterator = element.nodeIterator();
        while (iterator.hasNext()) {
            Node node = iterator.next();
            if (node instanceof Element) {
                Element eleNode = (Element) node;
                parseElement(eleNode, buffer);
            }
            if (node instanceof Text) {
                Text text = (Text) node;
                buffer.append(text.getText());
            }
            if (node instanceof CDATA) {
                CDATA dataNode = (CDATA) node;
                buffer.append(dataNode.getText());
            }
            if (node instanceof Comment) {
                Comment comNode = (Comment) node;
                buffer.append(comNode.getText());
            }
        }
        buffer.append("</"+element.getName()+">");
    }
}