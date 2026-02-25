<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exile-bucketlist-catstate');
delete_site_option('exile-bucketlist-catstate');
delete_option('exile-bucketlist-credits');
delete_site_option('exile-bucketlist-credits');
delete_option('exile-bucketlist-infobox');
delete_site_option('exile-bucketlist-infobox');

