-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('osf_megamenu_item_data', 'opal_elementor_post_name', 'opal_elementor_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('osf_megamenu_item_data', 'opal_elementor_post_name', 'opal_elementor_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('osf_megamenu_item_data', 'opal_elementor_post_name', 'opal_elementor_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('osf_megamenu_item_data', 'opal_elementor_post_name', 'opal_elementor_post_id');

