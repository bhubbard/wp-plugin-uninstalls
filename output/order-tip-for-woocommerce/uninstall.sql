-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pisol_otw_db_version', 'woocommerce_currency', 'woocommerce_currency_pos', 'pi_otw_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('values', 'user_roles', 'tip_price_name', 'not_giving_position', 'default_tip', 'required', 'custom_tip', 'min_tip', 'max_tip', 'step', 'default_custom_tip', 'priority', 'not_giving_text', 'user_role_logic', 'language', 'virtual_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('values', 'user_roles', 'tip_price_name', 'not_giving_position', 'default_tip', 'required', 'custom_tip', 'min_tip', 'max_tip', 'step', 'default_custom_tip', 'priority', 'not_giving_text', 'user_role_logic', 'language', 'virtual_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('values', 'user_roles', 'tip_price_name', 'not_giving_position', 'default_tip', 'required', 'custom_tip', 'min_tip', 'max_tip', 'step', 'default_custom_tip', 'priority', 'not_giving_text', 'user_role_logic', 'language', 'virtual_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('values', 'user_roles', 'tip_price_name', 'not_giving_position', 'default_tip', 'required', 'custom_tip', 'min_tip', 'max_tip', 'step', 'default_custom_tip', 'priority', 'not_giving_text', 'user_role_logic', 'language', 'virtual_product');

