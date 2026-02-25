<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsml_version');
delete_site_option('tsml_version');
delete_option('tsml_contact_display');
delete_site_option('tsml_contact_display');

