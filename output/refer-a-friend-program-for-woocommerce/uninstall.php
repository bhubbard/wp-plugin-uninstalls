<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scpDisable');
delete_site_option('scpDisable');
delete_option('sshID');
delete_site_option('sshID');

