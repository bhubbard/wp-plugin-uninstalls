<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipblock_enabled');
delete_site_option('ipblock_enabled');
delete_option('ipblock_maxcount');
delete_site_option('ipblock_maxcount');
delete_option('ipblock_ips');
delete_site_option('ipblock_ips');
delete_option('ipblock_interval');
delete_site_option('ipblock_interval');

