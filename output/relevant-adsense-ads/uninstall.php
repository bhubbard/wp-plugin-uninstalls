<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcga_auto');
delete_site_option('rcga_auto');
delete_option('relevant_adsense_ads');
delete_site_option('relevant_adsense_ads');

