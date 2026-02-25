-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('serpr_account_json', 'serpr_active_site', 'serpr_sites_data', 'serpr_cache_lifetime', 'serpr_excluded_keywords', 'serpr_sites_cache');

