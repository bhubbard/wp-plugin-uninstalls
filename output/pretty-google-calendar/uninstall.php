<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgcal_replacement_notice_dismissed');
delete_site_option('pgcal_replacement_notice_dismissed');
delete_option('pgcal_settings');
delete_site_option('pgcal_settings');

