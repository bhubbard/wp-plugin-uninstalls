-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpciteulike_reset_cache', 'wpciteulike_css_style', 'wpciteulike_bibliography_style', 'wpciteulike_title_link', 'wpciteulike_html_cache', 'wpciteulike_reset_html_cache');

