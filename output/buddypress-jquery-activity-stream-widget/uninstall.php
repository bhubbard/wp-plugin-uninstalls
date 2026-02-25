<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BPjQueryActivityStream');
delete_site_option('BPjQueryActivityStream');
delete_option('BPjQueryActivityStream_title');
delete_site_option('BPjQueryActivityStream_title');

