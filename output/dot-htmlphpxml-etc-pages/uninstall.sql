-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dot_pages_enable', 'dot_pages_slug', 'pages_mode', 'dot_pages_mode');

