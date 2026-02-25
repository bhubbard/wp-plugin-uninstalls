-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('if-menu-admin', 'if-menu-peak', 'if-menu-license-key', 'if-menu-plan');
DELETE FROM wp_options WHERE option_name LIKE 'if-menu-nonce-%';
DELETE FROM wp_options WHERE option_name LIKE 'ip-country-code-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('if_menu_enable', 'if_menu_condition_type', 'if_menu_condition', 'if_menu_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('if_menu_enable', 'if_menu_condition_type', 'if_menu_condition', 'if_menu_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('if_menu_enable', 'if_menu_condition_type', 'if_menu_condition', 'if_menu_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('if_menu_enable', 'if_menu_condition_type', 'if_menu_condition', 'if_menu_options');

