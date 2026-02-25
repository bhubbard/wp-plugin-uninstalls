-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pkl_wpz_rest_api_auth_enable', 'pkl_wpz_rest_api_auth_allow_root_endpoint', 'pkl_wpz_rest_api_auth_allow_pages', 'pkl_wpz_rest_api_auth_allow_posts');

