<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fitnessbliss_hide_c');
delete_site_option('fitnessbliss_hide_c');
delete_option('fitnessbliss_heading');
delete_site_option('fitnessbliss_heading');
delete_option('fcbmi_heading');
delete_site_option('fcbmi_heading');
delete_option('fcbfc_heading');
delete_site_option('fcbfc_heading');
delete_option('fccc_heading');
delete_site_option('fccc_heading');
delete_option('fccc_metric_only');
delete_site_option('fccc_metric_only');
delete_option('fccc_theme_color');
delete_site_option('fccc_theme_color');

