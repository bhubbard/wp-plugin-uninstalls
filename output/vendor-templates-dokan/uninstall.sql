-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vendor_templates_options', 'vendor_template_options', 'hide_cart_option', 'vtfd_remove_split_shipping', 'vtfd_templates_enabled', 'vendor_templates_settings_redirect');

