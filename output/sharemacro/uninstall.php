<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharemacro_options');
delete_site_option('sharemacro_options');
delete_option('SM_SHARE_SAVE_button');
delete_site_option('SM_SHARE_SAVE_button');

