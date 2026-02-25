-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pos-parent', 'pos-optimization-rules', 'pos-optimized-rules', 'pos-sign', 'eazywp_connection', 'eazywp_connecting_info', 'pos_locked_plugins_data', 'pos_locked_plugins_list', 'pos_blocked_plugins_data', 'pos_blocked_plugins_list', 'active_sitewide_plugins', 'woocommerce_permalinks', 'pos-x16', 'pos_login_notice_dismissed', 'pos_plugin_frozen', 'pos_plugin_frozen_by', 'pos_activation_redirect', 'pos_plugin_image', 'pos_history_x32', 'POS_LOCAL_HISTORY', 'pos_vul_count', 'pos_439001', 'pos_plugin_data', 'x32s');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pos_token', 'pos_promotion_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('pos_token', 'pos_promotion_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('pos_token', 'pos_promotion_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pos_token', 'pos_promotion_notice_dismissed');

