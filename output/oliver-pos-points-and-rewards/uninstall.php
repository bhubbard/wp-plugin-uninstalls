<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_points_rewards_redeem_points_ratio');
delete_site_option('wc_points_rewards_redeem_points_ratio');
delete_option('wc_points_rewards_points_tax_application');
delete_site_option('wc_points_rewards_points_tax_application');
delete_option('wc_points_rewards_cart_min_discount');
delete_site_option('wc_points_rewards_cart_min_discount');
delete_option('wc_points_rewards_cart_max_discount');
delete_site_option('wc_points_rewards_cart_max_discount');
delete_option('wc_points_rewards_max_discount');
delete_site_option('wc_points_rewards_max_discount');
delete_option('wc_points_rewards_partial_redemption_enabled');
delete_site_option('wc_points_rewards_partial_redemption_enabled');
delete_option('wc_points_rewards_earn_points_rounding');
delete_site_option('wc_points_rewards_earn_points_rounding');
delete_option('op_points_rewards_activation_date');
delete_site_option('op_points_rewards_activation_date');
delete_option('op_points_rewards_extenstion_origin_url');
delete_site_option('op_points_rewards_extenstion_origin_url');
delete_option('op_points_rewards_extenstion_server_url');
delete_site_option('op_points_rewards_extenstion_server_url');
delete_option('op_points_rewards_code');
delete_site_option('op_points_rewards_code');
delete_option('op_points_rewards_extenstion_name');
delete_site_option('op_points_rewards_extenstion_name');
delete_option('op_points_rewards_extenstion_url');
delete_site_option('op_points_rewards_extenstion_url');
delete_option('op_points_rewards_extenstion_id');
delete_site_option('op_points_rewards_extenstion_id');
delete_option('oliver_pos_subscription_client_id');
delete_site_option('oliver_pos_subscription_client_id');
delete_option('oliver_pos_subscription_token');
delete_site_option('oliver_pos_subscription_token');
delete_option('oliver_points_and_rewards_status');
delete_site_option('oliver_points_and_rewards_status');

