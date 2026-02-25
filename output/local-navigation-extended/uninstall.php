<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nlws_lnm_version');
delete_site_option('nlws_lnm_version');
delete_option('nlws_lnm_options');
delete_site_option('nlws_lnm_options');

