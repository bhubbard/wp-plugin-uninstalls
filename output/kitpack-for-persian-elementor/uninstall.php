<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpe_option');
delete_site_option('kpe_option');
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');

