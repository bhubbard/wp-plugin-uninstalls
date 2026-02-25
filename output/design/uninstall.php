<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dsgn_css');
delete_site_option('dsgn_css');
delete_option('dsgn_design_library');
delete_site_option('dsgn_design_library');
delete_option('dsgn_license');
delete_site_option('dsgn_license');

