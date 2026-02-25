<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-to-alexa-flash-briefing');
delete_site_option('wp-to-alexa-flash-briefing');

