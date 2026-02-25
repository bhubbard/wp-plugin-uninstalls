<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spamscrubber_exclude_ids');
delete_site_option('spamscrubber_exclude_ids');
delete_option('spamscrubber_honeypot_enabled');
delete_site_option('spamscrubber_honeypot_enabled');
delete_option('spamscrubber_honeypot_field');
delete_site_option('spamscrubber_honeypot_field');

