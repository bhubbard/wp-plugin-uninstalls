-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onecom_vcache_info', 'proisp_varnish_caching_ttl', 'proisp_varnish_caching_homepage_ttl', 'proisp_varnish_caching_ttl_unit', 'onecom_staging_existing_live', 'onecom_plugin_version_vcache', 'oc_cdn_enabled', 'oc_rules_version');
DELETE FROM wp_options WHERE option_name LIKE '%enable';
DELETE FROM wp_options WHERE option_name LIKE '%cookie';
DELETE FROM wp_options WHERE option_name LIKE '%ttl';
DELETE FROM wp_options WHERE option_name LIKE '%ttl_unit';
DELETE FROM wp_options WHERE option_name LIKE '%homepage_ttl';
DELETE FROM wp_options WHERE option_name LIKE '%ips';
DELETE FROM wp_options WHERE option_name LIKE '%debug';
DELETE FROM wp_options WHERE option_name LIKE '%purge_key';
DELETE FROM wp_options WHERE option_name LIKE '%truncate_notice';
DELETE FROM wp_options WHERE option_name LIKE '%ssl';
DELETE FROM wp_options WHERE option_name LIKE '%hosts';
DELETE FROM wp_options WHERE option_name LIKE '%dynamic_host';
DELETE FROM wp_options WHERE option_name LIKE '%stats_json_file';
DELETE FROM wp_options WHERE option_name LIKE '%purge_menu_save';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oct_exclude_from_cache');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oct_exclude_from_cache');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oct_exclude_from_cache');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oct_exclude_from_cache');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ttl';

