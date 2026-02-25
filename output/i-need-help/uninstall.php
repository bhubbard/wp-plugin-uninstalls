<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ineedhelp_from_email');
delete_site_option('ineedhelp_from_email');
delete_option('ineedhelp_to_email');
delete_site_option('ineedhelp_to_email');

