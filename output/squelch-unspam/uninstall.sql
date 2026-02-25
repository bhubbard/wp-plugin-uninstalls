-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lstunspam_last_change', 'lstunspam_showmessage', 'lstunspam_version', 'lstunspam_showfieldupdatemessage', 'lstunspam_fieldsMap', 'lstunspam_field1name', 'lstunspam_field2name', 'lstunspam_field3name', 'lstunspam_field4name', 'lstunspam_field4val', 'lstunspam_default_fields', 'lstunspam_last_change_version', 'lstunspam_ignorewoocommerce');

