<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genpro_option_name');
delete_site_option('genpro_option_name');
delete_option('genpro_serial_text');
delete_site_option('genpro_serial_text');
delete_option('genpro_guar_text');
delete_site_option('genpro_guar_text');
delete_option('genpro_formbtn_text');
delete_site_option('genpro_formbtn_text');
delete_option('genpro_form_positive');
delete_site_option('genpro_form_positive');
delete_option('genpro_form_negative');
delete_site_option('genpro_form_negative');
delete_option('genpro_container_id');
delete_site_option('genpro_container_id');

