<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tandc_headline');
delete_site_option('tandc_headline');
delete_option('tandc_description');
delete_site_option('tandc_description');
delete_option('tandc_checkboxtext');
delete_site_option('tandc_checkboxtext');
delete_option('tandc_style');
delete_site_option('tandc_style');
delete_option('tandc_error');
delete_site_option('tandc_error');

