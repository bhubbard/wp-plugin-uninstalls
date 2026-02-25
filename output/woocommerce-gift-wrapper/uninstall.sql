-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcgwp_cart_hook', 'wcgwp_cart_display', 'current_theme', 'wcgwp_lt6_templates', 'wcgwp_number', 'wcgwp_details', 'wcgwp_link', 'wcGIFTWRAPPER_VERSION', 'wcgw_version', 'wcgwp_modal', 'wcgwp_donate_dismiss_06-28', 'wcgwp_display', 'wcgwp_strings', 'wcgwp_category_id', 'wcgwp_show_thumb', 'wcgwp_textarea_limit', 'wcgwp_checkbox_link', 'wcgwp_hide_price', 'wcgwp_multiples', ' wcgwp_multiples', 'wcgwp_delete_all', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

