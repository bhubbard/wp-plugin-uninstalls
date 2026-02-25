<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('actihitr_activity_logs');
delete_site_option('actihitr_activity_logs');

// Delete Transients
delete_transient('actihitr_activity_logs_transient');
delete_site_transient('actihitr_activity_logs_transient');

