<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amwnlogos_name');
delete_site_option('amwnlogos_name');
delete_option('amwnlogos_start_date');
delete_site_option('amwnlogos_start_date');
delete_option('amwnlogos_end_date');
delete_site_option('amwnlogos_end_date');
delete_option('amwnlogos_repeat');
delete_site_option('amwnlogos_repeat');
delete_option('amwnlogos_logo_holder');
delete_site_option('amwnlogos_logo_holder');
delete_option('amwnlogos_replacement_logo');
delete_site_option('amwnlogos_replacement_logo');
delete_option('amwnlogos_replacement_logo_retina');
delete_site_option('amwnlogos_replacement_logo_retina');
delete_option('amwnlogos_show_credit');
delete_site_option('amwnlogos_show_credit');

