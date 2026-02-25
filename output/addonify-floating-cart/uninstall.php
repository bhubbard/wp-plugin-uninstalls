<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udp_agent_allow_tracking');
delete_site_option('udp_agent_allow_tracking');
delete_option('udp_agent_tracking_msg_last_shown_at');
delete_site_option('udp_agent_tracking_msg_last_shown_at');
delete_option('udp_installed_agents');
delete_site_option('udp_installed_agents');
delete_option('udp_active_agent_basename');
delete_site_option('udp_active_agent_basename');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

// Clear Cron Jobs
wp_clear_scheduled_hook('cc_udp_agent_send_data');
wp_clear_scheduled_hook('udp_agent_cron');

