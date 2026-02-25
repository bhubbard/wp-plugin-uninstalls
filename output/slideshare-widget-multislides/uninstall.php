<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sshw_api_key');
delete_site_option('sshw_api_key');
delete_option('sshw_secret');
delete_site_option('sshw_secret');
delete_option('sshw_cahche');
delete_site_option('sshw_cahche');

