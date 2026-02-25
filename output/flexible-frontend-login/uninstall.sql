-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_EX_FONTS_LIST', 'flexible-frontend-login', 'flexible_frontend_login');

