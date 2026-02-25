-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_pvbur_user_roles_for_settings', 'woocommerce_version', 'alg_wc_pvbur_enabled', 'alg_wc_pvbur_visibility', 'alg_wc_pvbur_purchasable', 'alg_wc_pvbur_add_column_visible_user_roles', 'alg_wc_pvbur_add_to_quick_edit', 'alg_wc_pvbur_query', 'active_sitewide_plugins', 'alg_wc_pvbur_version', 'awcpvbur_all_pids');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pvbur_bulk_visible_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pvbur_bulk_invisible_products_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

