-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sws_update_notice', 'sep_exclude', 'woocommerce_catalog_columns', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ywp_smart_search_enable_synonyms_indexing', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';

