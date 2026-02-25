-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abp_author_id', 'abp_auth_key', 'abp_cache_time', 'abp_categories', 'abp_cache_time_const', 'abp_magenet_api_url', 'abp_cp_host');

