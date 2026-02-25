<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pplb_options');
delete_site_option('pplb_options');
delete_option('pplb_button_position');
delete_site_option('pplb_button_position');
delete_option('pplb_pass_expires');
delete_site_option('pplb_pass_expires');
delete_option('pplb_button_filter');
delete_site_option('pplb_button_filter');

