<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mimamebu_active_currencies');
delete_site_option('mimamebu_active_currencies');
delete_option('mimamebu_active_languages');
delete_site_option('mimamebu_active_languages');
delete_option('mimamebu_screensaver');
delete_site_option('mimamebu_screensaver');
delete_option('mimamebu_features');
delete_site_option('mimamebu_features');
delete_option('mimamebu_front_theme');
delete_site_option('mimamebu_front_theme');
delete_option('mimamebu_ss_timeout_min');
delete_site_option('mimamebu_ss_timeout_min');
delete_option('mimamebu_active_theme');
delete_site_option('mimamebu_active_theme');
delete_option('mimamebu_default_currency');
delete_site_option('mimamebu_default_currency');

