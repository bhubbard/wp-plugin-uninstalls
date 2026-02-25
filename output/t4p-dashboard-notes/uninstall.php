<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('t4p_dashboard_notes_items');
delete_site_option('t4p_dashboard_notes_items');

