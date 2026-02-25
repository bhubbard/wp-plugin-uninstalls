-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scheduler_main', 'scheduler_version', 'scheduler_xml', 'scheduler_xml_version');

