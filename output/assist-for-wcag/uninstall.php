<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('assist_for_wcag_settings');
delete_site_option('assist_for_wcag_settings');

