<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scll_logo');
delete_site_option('scll_logo');
delete_option('scll_background_color');
delete_site_option('scll_background_color');

