<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beek_smooth_scroller_settings');
delete_site_option('beek_smooth_scroller_settings');

