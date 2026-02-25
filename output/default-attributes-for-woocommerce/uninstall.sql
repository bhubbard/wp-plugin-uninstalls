-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_daw_disable_options', 'wc_daw_select_attribute', 'wc_daw_single_select', 'wc_daw_remove_text', 'wc_daw_max_variations', 'wc_daw_first_attribute');
DELETE FROM wp_options WHERE option_name LIKE 'wc_daw_attribute_default-%';
DELETE FROM wp_options WHERE option_name LIKE 'daw_default_attributes_%';

