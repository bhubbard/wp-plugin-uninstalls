-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lolmi_login_page_url', 'lolmi_logout_redirect_url', 'lolmi_login_redirect_url');

