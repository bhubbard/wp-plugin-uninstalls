-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_PJAX_PREFETCH_URLS_TANSIENT', 'WP_PJAX_LAST_PREFETCH');

