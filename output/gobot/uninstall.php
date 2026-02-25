<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gobot_apikey');
delete_site_option('gobot_apikey');

// Delete Transients
delete_transient('gobot-msg');
delete_site_transient('gobot-msg');

