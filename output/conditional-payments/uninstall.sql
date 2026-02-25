-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dscpw_enable_debug', 'dscpw_sortable_order', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_welcome_screen_dscpw_mode_activation_redirect_data', 'dscpw_name_address_fields', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sm_product_cost', 'dscpw_cp_status', 'shipping_method_list', 'cost_rule_match', 'cp_metabox', 'cp_actions_metabox', 'cp_message_metabox');
DELETE FROM wp_usermeta WHERE meta_key IN ('sm_product_cost', 'dscpw_cp_status', 'shipping_method_list', 'cost_rule_match', 'cp_metabox', 'cp_actions_metabox', 'cp_message_metabox');
DELETE FROM wp_termmeta WHERE meta_key IN ('sm_product_cost', 'dscpw_cp_status', 'shipping_method_list', 'cost_rule_match', 'cp_metabox', 'cp_actions_metabox', 'cp_message_metabox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sm_product_cost', 'dscpw_cp_status', 'shipping_method_list', 'cost_rule_match', 'cp_metabox', 'cp_actions_metabox', 'cp_message_metabox');

