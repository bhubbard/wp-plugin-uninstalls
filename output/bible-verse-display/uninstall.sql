-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bvd_post_version', 'bvd_post_type', 'bvd_connection', 'bvd_show_version', 'bvd_favorites');

