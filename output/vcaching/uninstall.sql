-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('varnish_caching_enable', 'varnish_caching_ttl', 'varnish_caching_homepage_ttl', 'varnish_caching_ips', 'varnish_caching_dynamic_host', 'varnish_caching_hosts', 'varnish_caching_override', 'varnish_caching_purge_key', 'varnish_caching_cookie', 'varnish_caching_stats_json_file', 'varnish_caching_truncate_notice', 'varnish_caching_purge_menu_save', 'varnish_caching_ssl', 'varnish_caching_debug');
DELETE FROM wp_options WHERE option_name LIKE '%ssl';
DELETE FROM wp_options WHERE option_name LIKE '%purge_key';
DELETE FROM wp_options WHERE option_name LIKE '%truncate_notice';
DELETE FROM wp_options WHERE option_name LIKE '%debug';
DELETE FROM wp_options WHERE option_name LIKE '%override';
DELETE FROM wp_options WHERE option_name LIKE '%homepage_ttl';
DELETE FROM wp_options WHERE option_name LIKE '%ips';
DELETE FROM wp_options WHERE option_name LIKE '%hosts';
DELETE FROM wp_options WHERE option_name LIKE '%dynamic_host';
DELETE FROM wp_options WHERE option_name LIKE '%stats_json_file';
DELETE FROM wp_options WHERE option_name LIKE '%purge_menu_save';
DELETE FROM wp_options WHERE option_name LIKE '%ttl';
DELETE FROM wp_options WHERE option_name LIKE '%enable';
DELETE FROM wp_options WHERE option_name LIKE '%cookie';
DELETE FROM wp_options WHERE option_name LIKE '%varnish_backends';
DELETE FROM wp_options WHERE option_name LIKE '%varnish_acls';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ttl';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ttl';

