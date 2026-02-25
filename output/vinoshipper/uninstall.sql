-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vs_injector_account_id', 'vs_injector_theme', 'vs_injector_theme_dark', 'vs_injector_cart_position', 'vs_injector_cart_button');

