<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beaver_chart_deferred_admin_notices');
delete_site_option('beaver_chart_deferred_admin_notices');

