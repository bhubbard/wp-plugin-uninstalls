-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comet_cache_mbstring_deprecated_warning_bypass', 'active_sitewide_plugins', 'zencache_options', 'zencache_errors', 'zencache_notices', 'dm_no_primary_domain', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE '%_when_logged_in_was_1';
DELETE FROM wp_options WHERE option_name LIKE '%_errors';
DELETE FROM wp_options WHERE option_name LIKE '%_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_apc_warning_bypass';

