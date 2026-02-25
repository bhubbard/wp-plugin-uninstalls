<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brkhi_merchantid_input');
delete_site_option('brkhi_merchantid_input');
delete_option('brkhi_apisecret_input');
delete_site_option('brkhi_apisecret_input');
delete_option('brkhi_activity_logs');
delete_site_option('brkhi_activity_logs');

