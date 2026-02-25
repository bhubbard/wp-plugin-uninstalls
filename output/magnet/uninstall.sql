-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magnet_related_widget_id', 'magnet_related_widget_order', 'magnet_recommended_widget_id', 'magnet_recommended_widget_order', 'magnet_entities_widget_id', 'magnet_entities_widget_order', 'magnet_intext_widget_id', 'magnet_intext_widget_order', 'magnet_follow_widget_id', 'magnet_follow_widget_order', 'magnet_customer_id', 'magnet_related_page_id', 'magnet_related_entity_id', 'magnet_entity_follow_widget_id', 'magnet_entity_follow_widget_top', 'magnet_entity_follow_widget_bottom');

