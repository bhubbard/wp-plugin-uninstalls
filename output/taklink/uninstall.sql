-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taklink_page_id', 'taklink_apitoken', 'taklink_user_page_cache');

