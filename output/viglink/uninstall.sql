-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('key', 'is-not-first-load', 'enable-rss-rewrites');

