-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sl_db_version', 'sl_append_disclosure_badge', 'sl_add_disclosure_badge', 'sl_publisher_id', 'sl_enable_subdomain', 'sl_subdomain', 'sl_enable_rss_filtering', 'sl_footer_js_works_for', 'sl_verify_footer_js_token');

