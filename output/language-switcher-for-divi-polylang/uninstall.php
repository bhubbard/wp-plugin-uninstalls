<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsdp_initial_save_version');
delete_site_option('lsdp_initial_save_version');
delete_option('lsdp-ratingDiv');
delete_site_option('lsdp-ratingDiv');
delete_option('lsdp-installDate');
delete_site_option('lsdp-installDate');
delete_option('lsdp-v');
delete_site_option('lsdp-v');
delete_option('lsdp-type');
delete_site_option('lsdp-type');
delete_option('lsdp_plugin_activation_redirect');
delete_site_option('lsdp_plugin_activation_redirect');

