<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushagent-accesstoken');
delete_site_option('pushagent-accesstoken');
delete_option('dashboardbuilder-xtitle1');
delete_site_option('dashboardbuilder-xtitle1');

