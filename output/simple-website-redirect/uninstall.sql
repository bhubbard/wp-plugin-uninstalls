-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_website_redirect_status', 'simple_website_redirect_to_root', 'simple_website_redirect_type', 'simple_website_redirect_url', 'simple_website_redirect_exclude_paths', 'simple_website_redirect_exclude_query_params');

