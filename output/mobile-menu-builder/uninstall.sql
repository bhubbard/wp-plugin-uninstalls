-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MOBILE_MENU_BUILDER_INSTALLED', 'mobile_menu_builder_customizer');

