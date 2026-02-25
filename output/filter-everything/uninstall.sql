-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_filter_settings', 'wpc_filter_permalinks', 'icl_sitepress_settings', 'widget_wpc_sorting_widget', 'wpc_seo_rules_settings', 'wpc_first_install', 'wpc_filter_experimental', 'active_sitewide_plugins', 'default_product_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpc_filter_set_post_type', 'wpc_filter_set_query_vars', '_customize_changeset_uuid', 'order', 'pwb_brand_image', 'thumbnail_id', 'image');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpc_filter_set_post_type', 'wpc_filter_set_query_vars', '_customize_changeset_uuid', 'order', 'pwb_brand_image', 'thumbnail_id', 'image');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpc_filter_set_post_type', 'wpc_filter_set_query_vars', '_customize_changeset_uuid', 'order', 'pwb_brand_image', 'thumbnail_id', 'image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpc_filter_set_post_type', 'wpc_filter_set_query_vars', '_customize_changeset_uuid', 'order', 'pwb_brand_image', 'thumbnail_id', 'image');

