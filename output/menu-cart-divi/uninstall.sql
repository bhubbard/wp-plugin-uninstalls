-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwpdm_menu_cart_activation_time', 'lwpdm_menu_cart_spare_me', 'lwp_menu_cart_options');

