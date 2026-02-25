-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cansin_url_redirect_client_Address', 'cansin_url_redirect_host_api_secret', 'cansin_url_redirect_role', 'cansin_url_redirect_client_api_secret', 'cansin_url_redirect_list', 'cansin_url_redirect_host_Address');

