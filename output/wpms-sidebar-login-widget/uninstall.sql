-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('network_sidebar_login_rememberme', 'network_sidebar_login_subscribe_main_site', 'network_sidebar_login_subscribe_other_blog', 'network_sidebar_login_forum_installed', 'network_sidebar_login_forum_url', 'network_sidebar_login_css', 'network_sidebar_login_custom_url', 'network_sidebar_login_subblog');

