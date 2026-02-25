<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srel_main');
delete_site_option('srel_main');
delete_option('srel_options');
delete_site_option('srel_options');
delete_option('srel_excluded');
delete_site_option('srel_excluded');
delete_option('srel_included');
delete_site_option('srel_included');

