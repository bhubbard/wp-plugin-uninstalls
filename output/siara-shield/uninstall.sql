-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siarashield_private_key', 'list_form_data', 'siarashield_css', 'siarashield_commentform', 'siarashield_tocken', 'siarashield_form_selection', 'field_id_class', 'button_id_class', 'button_name');

