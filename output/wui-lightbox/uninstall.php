<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wui_lbs_show');
delete_site_option('wui_lbs_show');
delete_option('wui_lbs_gallery');
delete_site_option('wui_lbs_gallery');

