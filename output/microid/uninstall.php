<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('microid_include_posts');
delete_site_option('microid_include_posts');
delete_option('microid_include_comments');
delete_site_option('microid_include_comments');
delete_option('microid_identities');
delete_site_option('microid_identities');

