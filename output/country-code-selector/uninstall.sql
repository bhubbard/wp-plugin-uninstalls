-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_on_woocommerce', 'enable_on_shopp', 'enable_on_gform', 'selected_gform', 'gform_phone_field_id', 'enable_on_cform7', 'selected_cform7', 'cform7_phone_field_id', 'show_selected', 'selected_countries', 'initial_country');

