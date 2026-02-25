-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customfield1', 'customfield2', 'customfield3', 'customfield4', 'customfield5', 'tagname1', 'tagname2', 'tagname3', 'tagname4', 'tagname5', 'tagname6', 'tagname7', 'tagname8', 'numberposts', 'categoryname', 'checkbox1', 'checkbox2', 'checkbox3');

