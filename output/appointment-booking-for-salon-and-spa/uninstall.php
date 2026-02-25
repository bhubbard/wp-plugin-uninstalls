<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blknt_widgetlink');
delete_site_option('blknt_widgetlink');
delete_option('blknt_widgetposition');
delete_site_option('blknt_widgetposition');
delete_option('blknt_buttoncolor');
delete_site_option('blknt_buttoncolor');

