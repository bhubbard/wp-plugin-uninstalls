<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onlineleaf_engines');
delete_site_option('onlineleaf_engines');
delete_option('onlineleaf_language');
delete_site_option('onlineleaf_language');
delete_option('onlineleaf_standbytime');
delete_site_option('onlineleaf_standbytime');

