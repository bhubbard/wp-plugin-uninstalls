<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revisions_limit_option');
delete_site_option('revisions_limit_option');
delete_option('revisions_limit_activation_redirect');
delete_site_option('revisions_limit_activation_redirect');

