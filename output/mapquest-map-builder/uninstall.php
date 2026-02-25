<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mq_maps_map_height');
delete_site_option('mq_maps_map_height');
delete_option('mq_maps_map_width');
delete_site_option('mq_maps_map_width');
delete_option('mq_maps_use_sidebar');
delete_site_option('mq_maps_use_sidebar');
delete_option('mq_maps_use_editor_toolbar');
delete_site_option('mq_maps_use_editor_toolbar');
delete_option('mq_maps_use_editor_toolbar_line');
delete_site_option('mq_maps_use_editor_toolbar_line');
delete_option('mq_maps_use_quicktags_toolbar');
delete_site_option('mq_maps_use_quicktags_toolbar');
delete_option('mq_maps_use_media_toolbar');
delete_site_option('mq_maps_use_media_toolbar');

