<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bb-lang');
delete_site_option('bb-lang');
delete_option('bb-max-lastposts');
delete_site_option('bb-max-lastposts');
delete_option('bb-max-popularposts');
delete_site_option('bb-max-popularposts');
delete_option('bb-max-comments');
delete_site_option('bb-max-comments');
delete_option('bb-services');
delete_site_option('bb-services');

