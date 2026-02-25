-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wecantrack_version', 'wecantrack_api_key', 'wecantrack_custom_redirect_html', 'wecantrack_redirect_options', 'wecantrack_website_options', 'wecantrack_referrer_cookie_status', 'wecantrack_storage', 'wecantrack_plugin_status', 'wecantrack_session_enabler', 'wecantrack_snippet', 'wecantrack_redirect_status', 'wecantrack_fetch_expiration', 'wecantrack_snippet_version', 'wecantrack_domain_patterns', 'wecantrack_lock_cache_refresh');

