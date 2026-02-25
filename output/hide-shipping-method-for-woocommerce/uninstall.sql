-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'hide_shipping_option', 'wbs_config', 'whsm_limited_allowed_rules', 'whsm_where_hear_about_us', 'whsm_data_submited_in_sendiblue', 'sm_sortable_order', 'whsm_hide_shipping_cart', 'hide_shipping_method_list', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'whsm_version', '_welcome_screen_whsm_mode_activation_redirect_data', 'whsm-hide-limit-notice', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'whsm-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whsm_status', 'sm_product_cost', 'get_shipping_method_option', 'get_shipping_option', 'shipping_method_list', 'cost_rule_match', 'sm_metabox', 'main_rule_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('whsm_status', 'sm_product_cost', 'get_shipping_method_option', 'get_shipping_option', 'shipping_method_list', 'cost_rule_match', 'sm_metabox', 'main_rule_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('whsm_status', 'sm_product_cost', 'get_shipping_method_option', 'get_shipping_option', 'shipping_method_list', 'cost_rule_match', 'sm_metabox', 'main_rule_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whsm_status', 'sm_product_cost', 'get_shipping_method_option', 'get_shipping_option', 'shipping_method_list', 'cost_rule_match', 'sm_metabox', 'main_rule_condition');

