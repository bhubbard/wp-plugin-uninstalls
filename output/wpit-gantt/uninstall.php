<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpit_gantt_num');
delete_site_option('wpit_gantt_num');
delete_option('wpit_gantt_style');
delete_site_option('wpit_gantt_style');

