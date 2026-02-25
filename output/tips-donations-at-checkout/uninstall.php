<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guaven_wtd_type');
delete_site_option('guaven_wtd_type');
delete_option('guaven_wtd_field_name');
delete_site_option('guaven_wtd_field_name');
delete_option('guaven_wtd_tip_options');
delete_site_option('guaven_wtd_tip_options');
delete_option('guaven_wtd_custom_amount');
delete_site_option('guaven_wtd_custom_amount');
delete_option('guaven_wtd_custom_amount_text');
delete_site_option('guaven_wtd_custom_amount_text');
delete_option('guaven_wtd_notice');
delete_site_option('guaven_wtd_notice');
delete_option('guaven_wtd_notice_hideafter');
delete_site_option('guaven_wtd_notice_hideafter');
delete_option('guaven_wtd_installed_100');
delete_site_option('guaven_wtd_installed_100');
delete_option('guaven_wtd_custom_amount_button');
delete_site_option('guaven_wtd_custom_amount_button');

