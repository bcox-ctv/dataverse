import xml.etree.ElementTree as ET
import json

def xml_to_dict(element):
    """Recursively convert an XML element and its children into a dictionary."""
    result = {}
    for child in element:
        child_dict = {}
        # If the child has attributes, add them as the first key-value pair
        if child.attrib:
            for attr_name, attr_value in child.attrib.items():
                child_dict[attr_name] = attr_value

        # If the child has children, recurse
        if len(child):
            child_dict.update(xml_to_dict(child))
        else:
            # If the child has no children, use its text content
            child_dict = child.text or ""

        # Add the child to the result dictionary
        if child.tag in result:
            if isinstance(result[child.tag], list):
                result[child.tag].append(child_dict)
            else:
                result[child.tag] = [result[child.tag], child_dict]
        else:
            result[child.tag] = child_dict
    return result

def convert_xml_to_json(xml_file, json_file):
    """Convert an XML file to a JSON file."""
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()
        data_dict = {root.tag: xml_to_dict(root)}
        entities_dict = {}
        for entity, attributes in data_dict[root.tag].items():
            if isinstance(attributes, dict):
                entities_dict[entity] = attributes
        entities_dict = entities_dict.get("Entities").get("Entity", {})

        for entity in entities_dict:
            if "EntityInfo" in entity and "entity" in entity["EntityInfo"] and 'attributes' in entity["EntityInfo"]["entity"]  and 'attribute' in entity["EntityInfo"]["entity"]['attributes']:
                entity["attributes"] = entity["EntityInfo"]["entity"]['attributes'].pop("attribute")
            for key in list(entity.keys()):
                if key not in ("Name", "attributes"):
                    del entity[key]
        entities_dict = [entity for entity in entities_dict if len(entity.keys()) >= 2]
        return entities_dict
    
    except Exception as e:
        print(f"Error: {e}")
        return {}

# Example usage
xml_file = "/Users/briancox/Downloads/customizations.xml"  # Path to your XML file
json_file = "/Users/briancox/Downloads/customizations.json"  # Path to save the JSON file
convert_xml_to_json(xml_file, json_file)