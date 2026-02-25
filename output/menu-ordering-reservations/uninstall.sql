-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glf_connection_type', 'glf_mor_installation_id', 'glf_check_old_widgets_elementor', 'glf_mor_restaurant_data', 'glf_wordpress_options', 'glf_plugin_version', 'glf_plugin_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'glf_mor_restaurant_menu%';
DELETE FROM wp_options WHERE option_name LIKE 'glf_mor_restaurant_opening_hours_%';
DELETE FROM wp_options WHERE option_name LIKE 'glf_mor_restaurant_promotions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

