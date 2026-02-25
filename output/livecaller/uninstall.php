<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livecaller_widget_id');
delete_site_option('livecaller_widget_id');
delete_option('livecaller_locale');
delete_site_option('livecaller_locale');

