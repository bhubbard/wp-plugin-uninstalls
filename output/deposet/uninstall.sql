-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deposet_enable', 'deposet_category_rules', 'deposet_disable_roles', 'deposet_checkout_enabled', 'deposet_type', 'deposet_amount', 'deposet_default_selection', 'deposet_stock_reduce', 'deposet_disabled_gateways', 'deposet_force_deposit', 'deposet_require_login', 'deposet_keep_data_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_deposet_inherit', '_deposet_force', '_deposet_enable', '_deposet_type', '_deposet_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_deposet_inherit', '_deposet_force', '_deposet_enable', '_deposet_type', '_deposet_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_deposet_inherit', '_deposet_force', '_deposet_enable', '_deposet_type', '_deposet_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_deposet_inherit', '_deposet_force', '_deposet_enable', '_deposet_type', '_deposet_amount');

