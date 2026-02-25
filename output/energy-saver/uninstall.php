<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sa_es_overlay_settings');
delete_site_option('sa_es_overlay_settings');
delete_option('sa_es_optimize_settings');
delete_site_option('sa_es_optimize_settings');

