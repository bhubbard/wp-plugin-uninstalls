<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmpfc_fields');
delete_site_option('wmpfc_fields');
delete_option('wmpfc_installed_date');
delete_site_option('wmpfc_installed_date');

