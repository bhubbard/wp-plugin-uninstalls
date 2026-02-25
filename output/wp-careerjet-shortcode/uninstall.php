<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcj__option_name');
delete_site_option('wpcj__option_name');
delete_option('wpcj_style_option_name');
delete_site_option('wpcj_style_option_name');

