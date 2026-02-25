-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s_not_for_logged_in_user', 's_ip_list', 's_ua_list', 's_redirect_url');

