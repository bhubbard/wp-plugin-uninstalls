-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('last_post_redirect_way', 'last_post_redirect_post_type', 'last_post_redirect_post_status', 'last_post_redirect_get_name');

