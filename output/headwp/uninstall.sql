-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('head_js_wp_version', 'head_js_wp_update_timestamp');

