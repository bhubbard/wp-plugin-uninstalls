<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lipsum-dynamo');
delete_site_option('lipsum-dynamo');
delete_option('lipsum_dynamo-cleanup');
delete_site_option('lipsum_dynamo-cleanup');
delete_option('lipsum-dynamo-uninstall');
delete_site_option('lipsum-dynamo-uninstall');
delete_option('lipsum-dynamo-general');
delete_site_option('lipsum-dynamo-general');
delete_option('lipnamo_db_version');
delete_site_option('lipnamo_db_version');
delete_option('lipsum_dynamo');
delete_site_option('lipsum_dynamo');

