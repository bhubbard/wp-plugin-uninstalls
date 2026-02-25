<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ab_auto_load');
delete_site_option('ab_auto_load');
delete_option('WP_EX_FONTS_LIST');
delete_site_option('WP_EX_FONTS_LIST');

