<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SG_Options');
delete_site_option('SG_Options');
delete_option('ngg_options');
delete_site_option('ngg_options');

