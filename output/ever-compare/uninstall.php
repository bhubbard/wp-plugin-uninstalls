<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woolentor_others_tabs');
delete_site_option('woolentor_others_tabs');
delete_option('evercompare_do_activation_redirect');
delete_site_option('evercompare_do_activation_redirect');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('evercompare_installed');
delete_site_option('evercompare_installed');
delete_option('evercompare_version');
delete_site_option('evercompare_version');
delete_option('ever_compare_table_settings_tabs');
delete_site_option('ever_compare_table_settings_tabs');
delete_option('ever_compare_settings_tabs');
delete_site_option('ever_compare_settings_tabs');
delete_option('ever_compare_style_tabs');
delete_site_option('ever_compare_style_tabs');

