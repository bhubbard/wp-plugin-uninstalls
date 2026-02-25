-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpio_api_key', 'wpio_site_id', 'wpio_cdn_url', 'wpio_status', 'wpio_registered_domain', 'wpio_cache_version', 'wpio_activation_redirect', 'wpio_usage_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpio_dismissed_limit_reached', 'wpio_dismissed_limit_warning');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpio_dismissed_limit_reached', 'wpio_dismissed_limit_warning');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpio_dismissed_limit_reached', 'wpio_dismissed_limit_warning');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpio_dismissed_limit_reached', 'wpio_dismissed_limit_warning');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpio_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpio_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpio_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpio_dismissed_%';

