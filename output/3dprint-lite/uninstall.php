<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p3dlite_version');
delete_site_option('p3dlite_version');
delete_option('p3dlite_email_templates');
delete_site_option('p3dlite_email_templates');
delete_option('p3dlite_settings');
delete_site_option('p3dlite_settings');
delete_option('p3dlite_printers_description');
delete_site_option('p3dlite_printers_description');
delete_option('p3dlite_materials_description');
delete_site_option('p3dlite_materials_description');
delete_option('p3dlite_coatings_description');
delete_site_option('p3dlite_coatings_description');
delete_option('p3dlite_infills_description');
delete_site_option('p3dlite_infills_description');
delete_option('p3dlite_do_activation_redirect');
delete_site_option('p3dlite_do_activation_redirect');
delete_option('p3dlite_printers');
delete_site_option('p3dlite_printers');
delete_option('p3dlite_materials');
delete_site_option('p3dlite_materials');
delete_option('p3dlite_coatings');
delete_site_option('p3dlite_coatings');
delete_option('p3dlite_price_requests');
delete_site_option('p3dlite_price_requests');

// Clear Cron Jobs
wp_clear_scheduled_hook('p3dlite_housekeeping');

