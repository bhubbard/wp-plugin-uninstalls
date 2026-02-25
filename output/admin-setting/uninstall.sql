-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('list_menu_remove', 'list_menu', 'logo_login', 'background_login', 'logo_login_url', 'logo_login_title');

