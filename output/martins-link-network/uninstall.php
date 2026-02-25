<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('martinslinknetwork_version');
delete_site_option('martinslinknetwork_version');
delete_option('martinslinknetwork_key');
delete_site_option('martinslinknetwork_key');

