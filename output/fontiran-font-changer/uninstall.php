<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fontiran_default_options');
delete_site_option('fontiran_default_options');
delete_option('fontiran_new_option');
delete_site_option('fontiran_new_option');
delete_option('fontiran');
delete_site_option('fontiran');

