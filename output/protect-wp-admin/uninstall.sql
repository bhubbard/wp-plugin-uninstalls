-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwa_active', 'pwa_rewrite_text', 'pwa_restrict', 'pwa_logout', 'pwa_allow_custom_users', 'pwa_logo_path', 'pwa_login_page_bg_color', 'pwa_login_page_color');

