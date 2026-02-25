<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpsfw_migration_completed');
delete_site_option('rpsfw_migration_completed');
delete_option('rpsfw_migration_notice_dismissed_permanently');
delete_site_option('rpsfw_migration_notice_dismissed_permanently');
delete_option('rpsfw_migration_notice_dismissed_until');
delete_site_option('rpsfw_migration_notice_dismissed_until');
delete_option('woocommerce_paypal_settings');
delete_site_option('woocommerce_paypal_settings');
delete_option('woocommerce_restore_paypal_standard_settings');
delete_site_option('woocommerce_restore_paypal_standard_settings');
delete_option('rpsfw_migration_notice_count');
delete_site_option('rpsfw_migration_notice_count');

// Delete Transients
delete_transient('rpsfw_migration_success');
delete_site_transient('rpsfw_migration_success');
delete_transient('rpsfw_show_migration_notice');
delete_site_transient('rpsfw_show_migration_notice');
delete_transient('rpsfw_activation_notice');
delete_site_transient('rpsfw_activation_notice');

