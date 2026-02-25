-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_smart_brand_settings', 'smart_brands_migration_done', 'smart_brands_version', 'smart_brands_first_version', 'smart_brands_activation_date', 'smart_brands_db_version', 'sp_smart_brands_review_notice_dismiss', 'woocommerce_version', 'smart_brands_brand_taxonomy', 'spsbf_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_smart_brand_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_smart_brand_taxonomy_meta', 'thumbnail_id', 'sp_smart_brand_metaboxes', 'sp_smart_brand_metabox_layouts');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_smart_brand_taxonomy_meta', 'thumbnail_id', 'sp_smart_brand_metaboxes', 'sp_smart_brand_metabox_layouts');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_smart_brand_taxonomy_meta', 'thumbnail_id', 'sp_smart_brand_metaboxes', 'sp_smart_brand_metabox_layouts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_smart_brand_taxonomy_meta', 'thumbnail_id', 'sp_smart_brand_metaboxes', 'sp_smart_brand_metabox_layouts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

