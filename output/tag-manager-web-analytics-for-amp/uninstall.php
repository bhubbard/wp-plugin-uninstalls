<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtm_ga_amp_ga');
delete_site_option('gtm_ga_amp_ga');
delete_option('gtm_ga_amp_gtm');
delete_site_option('gtm_ga_amp_gtm');

