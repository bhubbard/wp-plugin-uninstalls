<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('private_tags_mode');
delete_site_option('private_tags_mode');
delete_option('private_tags');
delete_site_option('private_tags');
delete_option('public_tags');
delete_site_option('public_tags');

