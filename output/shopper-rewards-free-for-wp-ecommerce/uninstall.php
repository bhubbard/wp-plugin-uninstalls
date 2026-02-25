<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbci_shopper_rewards_ignore_categories');
delete_site_option('pbci_shopper_rewards_ignore_categories');
delete_option('pbci_shopper_rewards_redemption_options');
delete_site_option('pbci_shopper_rewards_redemption_options');
delete_option('pbci_shopper_rewards_name');
delete_site_option('pbci_shopper_rewards_name');
delete_option('pbci_shopper_rewards_more_points_needed_format');
delete_site_option('pbci_shopper_rewards_more_points_needed_format');
delete_option('pbci_shopper_rewards_days_to_use_coupon');
delete_site_option('pbci_shopper_rewards_days_to_use_coupon');
delete_option('pbci_shopper_rewards_redemption_labels');
delete_site_option('pbci_shopper_rewards_redemption_labels');
delete_option('pbci_shopper_rewards_points_per_currency_unit');
delete_site_option('pbci_shopper_rewards_points_per_currency_unit');
delete_option('pbci_shopper_rewards_terms_format');
delete_site_option('pbci_shopper_rewards_terms_format');
delete_option('pbci_shopper_rewards_redemption_types');
delete_site_option('pbci_shopper_rewards_redemption_types');
delete_option('pbci_shopper_rewards_per_currency_unit');
delete_site_option('pbci_shopper_rewards_per_currency_unit');
delete_option('pbci_shopper_rewards_powered_by');
delete_site_option('pbci_shopper_rewards_powered_by');
delete_option('pbci_shopper_rewards_per_per_dollar');
delete_site_option('pbci_shopper_rewards_per_per_dollar');
delete_option('user_account_url');
delete_site_option('user_account_url');
delete_option('pbci_messages');
delete_site_option('pbci_messages');

