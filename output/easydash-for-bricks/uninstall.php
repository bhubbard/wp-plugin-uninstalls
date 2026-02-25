<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edbb_dashboards');
delete_site_option('edbb_dashboards');
delete_option('edbb_hide_from_subsites');
delete_site_option('edbb_hide_from_subsites');

