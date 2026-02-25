-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clumanager_custom_login_url', 'clumanager_redirect_url', 'clumanager_admin_notice_dismissed');

