-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkbox1', 'tagname6', 'checkbox2', 'tagname7', 'checkbox3', 'tagname8', 'checkbox4', 'tagname1', 'customfield1', 'tagname2', 'customfield2', 'tagname3', 'customfield3', 'tagname4', 'customfield4', 'tagname5', 'customfield5', 'numberposts', 'categoryname');

