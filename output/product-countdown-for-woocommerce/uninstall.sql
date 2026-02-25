-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prowc_product_countdown_enabled', 'woocommerce_version', 'prowc_product_countdown_disable_product_action_purchasable', 'prowc_product_countdown_add_admin_column', 'prowc_product_countdown_format_human_time_diff', 'prowc_product_countdown_time_format_upper_limit', 'prowc_product_countdown_time_format', 'prowc_product_countdown_format', 'prowc_product_countdown_style', 'prowc_product_countdown_message_on_time_finished', 'prowc_product_countdown_update_rate_ms', 'prowc_product_countdown_reload_page', 'prowc_product_countdown_version', 'prowc_product_countdown_plugin_notice_nopemaybelater', 'prowc_product_countdown_plugin_notice_remindlater', 'prowc_product_countdown_plugin_reviewtrack', 'prowc_pcfwc_activation_time', 'prowc_product_countdown_plugin_notice_dismissed', 'prowc_pcfwc_notice_remindlater_rating', 'prowc_pcfwc_notice_dismissed_rating', 'prowc_product_countdown_plugin_notice_alreadydid');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

