<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcaleventwcb_event_description_additionals');
delete_site_option('gcaleventwcb_event_description_additionals');

