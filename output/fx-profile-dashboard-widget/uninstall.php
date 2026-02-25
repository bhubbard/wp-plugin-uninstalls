<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('fx_profile_dashboard_widget_notice');
delete_site_transient('fx_profile_dashboard_widget_notice');

