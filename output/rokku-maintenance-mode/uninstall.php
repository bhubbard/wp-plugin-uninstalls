<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rokkmamo_enabled');
delete_site_option('rokkmamo_enabled');
delete_option('rokkmamo_logo_id');
delete_site_option('rokkmamo_logo_id');
delete_option('rokkmamo_headline');
delete_site_option('rokkmamo_headline');
delete_option('rokkmamo_message');
delete_site_option('rokkmamo_message');

// Delete Transients
delete_transient('rokkmamo_status');
delete_site_transient('rokkmamo_status');
delete_transient('rokkmamo_last_toggle');
delete_site_transient('rokkmamo_last_toggle');

