<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prowc_product_countdown_enabled');
delete_site_option('prowc_product_countdown_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('prowc_product_countdown_disable_product_action_purchasable');
delete_site_option('prowc_product_countdown_disable_product_action_purchasable');
delete_option('prowc_product_countdown_add_admin_column');
delete_site_option('prowc_product_countdown_add_admin_column');
delete_option('prowc_product_countdown_format_human_time_diff');
delete_site_option('prowc_product_countdown_format_human_time_diff');
delete_option('prowc_product_countdown_time_format_upper_limit');
delete_site_option('prowc_product_countdown_time_format_upper_limit');
delete_option('prowc_product_countdown_time_format');
delete_site_option('prowc_product_countdown_time_format');
delete_option('prowc_product_countdown_format');
delete_site_option('prowc_product_countdown_format');
delete_option('prowc_product_countdown_style');
delete_site_option('prowc_product_countdown_style');
delete_option('prowc_product_countdown_message_on_time_finished');
delete_site_option('prowc_product_countdown_message_on_time_finished');
delete_option('prowc_product_countdown_update_rate_ms');
delete_site_option('prowc_product_countdown_update_rate_ms');
delete_option('prowc_product_countdown_reload_page');
delete_site_option('prowc_product_countdown_reload_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prowc_product_countdown_version');
delete_site_option('prowc_product_countdown_version');
delete_option('prowc_product_countdown_plugin_notice_nopemaybelater');
delete_site_option('prowc_product_countdown_plugin_notice_nopemaybelater');
delete_option('prowc_product_countdown_plugin_notice_remindlater');
delete_site_option('prowc_product_countdown_plugin_notice_remindlater');
delete_option('prowc_product_countdown_plugin_reviewtrack');
delete_site_option('prowc_product_countdown_plugin_reviewtrack');
delete_option('prowc_pcfwc_activation_time');
delete_site_option('prowc_pcfwc_activation_time');
delete_option('prowc_product_countdown_plugin_notice_dismissed');
delete_site_option('prowc_product_countdown_plugin_notice_dismissed');
delete_option('prowc_pcfwc_notice_remindlater_rating');
delete_site_option('prowc_pcfwc_notice_remindlater_rating');
delete_option('prowc_pcfwc_notice_dismissed_rating');
delete_site_option('prowc_pcfwc_notice_dismissed_rating');
delete_option('prowc_product_countdown_plugin_notice_alreadydid');
delete_site_option('prowc_product_countdown_plugin_notice_alreadydid');

