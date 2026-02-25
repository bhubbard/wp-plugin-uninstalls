<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deltadromeus_email_checker_options');
delete_site_option('deltadromeus_email_checker_options');

