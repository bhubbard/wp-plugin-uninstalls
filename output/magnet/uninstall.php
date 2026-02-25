<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magnet_related_widget_id');
delete_site_option('magnet_related_widget_id');
delete_option('magnet_related_widget_order');
delete_site_option('magnet_related_widget_order');
delete_option('magnet_recommended_widget_id');
delete_site_option('magnet_recommended_widget_id');
delete_option('magnet_recommended_widget_order');
delete_site_option('magnet_recommended_widget_order');
delete_option('magnet_entities_widget_id');
delete_site_option('magnet_entities_widget_id');
delete_option('magnet_entities_widget_order');
delete_site_option('magnet_entities_widget_order');
delete_option('magnet_intext_widget_id');
delete_site_option('magnet_intext_widget_id');
delete_option('magnet_intext_widget_order');
delete_site_option('magnet_intext_widget_order');
delete_option('magnet_follow_widget_id');
delete_site_option('magnet_follow_widget_id');
delete_option('magnet_follow_widget_order');
delete_site_option('magnet_follow_widget_order');
delete_option('magnet_customer_id');
delete_site_option('magnet_customer_id');
delete_option('magnet_related_page_id');
delete_site_option('magnet_related_page_id');
delete_option('magnet_related_entity_id');
delete_site_option('magnet_related_entity_id');
delete_option('magnet_entity_follow_widget_id');
delete_site_option('magnet_entity_follow_widget_id');
delete_option('magnet_entity_follow_widget_top');
delete_site_option('magnet_entity_follow_widget_top');
delete_option('magnet_entity_follow_widget_bottom');
delete_site_option('magnet_entity_follow_widget_bottom');

