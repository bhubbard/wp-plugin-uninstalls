-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zefw_element_id_counter', 'zefw-default-email-address', 'zefw_custom_emails_table_version');

