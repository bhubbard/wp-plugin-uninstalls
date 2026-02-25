-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable-widgets', 'seo_consultant_current_version', 'enable-htaccess-auto-rewrite', 'check-links', 'check-live-link');

