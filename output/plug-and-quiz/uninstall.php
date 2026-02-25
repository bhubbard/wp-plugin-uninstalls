<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugandquiz_domain_id');
delete_site_option('plugandquiz_domain_id');
delete_option('plugandquiz_script_position');
delete_site_option('plugandquiz_script_position');
delete_option('plugandquiz_modal_position');
delete_site_option('plugandquiz_modal_position');
delete_option('plugandquiz_enable_script');
delete_site_option('plugandquiz_enable_script');

