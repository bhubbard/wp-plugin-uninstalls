-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a2cp_image_field', 'a2cp_custom_field', 'a2cp_short_description', 'a2cp_custom_class', 'a2cp_out_of_stock', 'a2cp_default_text', 'a2cp_debug', 'a2cp_dom_check', 'a2cp_button_blocking', 'a2cp_delete_on_deactivation', 'a2cp_stop_refresh_frags', 'a2cp_after_add_text', 'a2cp_after_add_url', 'eaa2c_debug', 'active_sitewide_plugins');

