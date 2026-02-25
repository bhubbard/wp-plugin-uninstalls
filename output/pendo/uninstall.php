<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pendhope_snippet_options');
delete_site_option('pendhope_snippet_options');
delete_option('pendhope_admin_tracking');
delete_site_option('pendhope_admin_tracking');
delete_option('pendhope_tracking');
delete_site_option('pendhope_tracking');

