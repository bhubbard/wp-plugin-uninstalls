<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgmp_options');
delete_site_option('sgmp_options');
delete_option('widget_slickgooglemap');
delete_site_option('widget_slickgooglemap');
delete_option('sgmp_persisted_shortcodes');
delete_site_option('sgmp_persisted_shortcodes');

// Delete Transients
delete_transient('sgmp_update_routine');
delete_site_transient('sgmp_update_routine');
delete_transient('sgmp_layers_markers_export');
delete_site_transient('sgmp_layers_markers_export');

