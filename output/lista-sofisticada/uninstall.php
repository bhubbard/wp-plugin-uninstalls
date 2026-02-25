<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pluginListaSofisticada_visual_da_lista');
delete_site_option('pluginListaSofisticada_visual_da_lista');

