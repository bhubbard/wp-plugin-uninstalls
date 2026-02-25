<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcw_heading');
delete_site_option('fcw_heading');
delete_option('fcw_calculator_type');
delete_site_option('fcw_calculator_type');
delete_option('fcw_theme_color');
delete_site_option('fcw_theme_color');
delete_option('fcp_heading');
delete_site_option('fcp_heading');
delete_option('fcp_metric_only');
delete_site_option('fcp_metric_only');
delete_option('fcp_theme_color');
delete_site_option('fcp_theme_color');
delete_option('fcbmi_heading');
delete_site_option('fcbmi_heading');
delete_option('fcbmi_metric_only');
delete_site_option('fcbmi_metric_only');
delete_option('fcbmi_theme_color');
delete_site_option('fcbmi_theme_color');
delete_option('fcbfc_heading');
delete_site_option('fcbfc_heading');
delete_option('fcbfc_metric_only');
delete_site_option('fcbfc_metric_only');
delete_option('fcbfc_theme_color');
delete_site_option('fcbfc_theme_color');
delete_option('fccc_heading');
delete_site_option('fccc_heading');
delete_option('fccc_metric_only');
delete_site_option('fccc_metric_only');
delete_option('fccc_theme_color');
delete_site_option('fccc_theme_color');

