-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s4rm_global_redirect_enabled', 's4rm_redirect_url', 's4rm_redirect_type', 's4rm_excluded_urls', 's4rm_loop_threshold');

