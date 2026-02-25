-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arts_fluid_design_system_custom_groups', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings');

