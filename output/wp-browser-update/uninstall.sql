-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_browserupdate_browsers', 'wp_browserupdate_js', 'wp_browserupdate_css_buorg');

