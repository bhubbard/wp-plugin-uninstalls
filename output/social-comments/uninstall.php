<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_comments');
delete_site_option('social_comments');

// Delete Transients
delete_transient('bainternetNews');
delete_site_transient('bainternetNews');

