-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('current-post-shortcode-installed', 'current-post-shortcode-version');

