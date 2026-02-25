<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btw_general');
delete_site_option('btw_general');
delete_option('btw_defaultatts');
delete_site_option('btw_defaultatts');
delete_option('btw_modedefaults');
delete_site_option('btw_modedefaults');

