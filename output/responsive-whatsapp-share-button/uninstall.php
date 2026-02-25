<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Fmbefore_blogpost');
delete_site_option('Fmbefore_blogpost');
delete_option('Fmafter_blogpost');
delete_site_option('Fmafter_blogpost');
delete_option('Fmbefor_blogpost');
delete_site_option('Fmbefor_blogpost');

