#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magnet_related_widget_id'
wp option delete 'magnet_related_widget_order'
wp option delete 'magnet_recommended_widget_id'
wp option delete 'magnet_recommended_widget_order'
wp option delete 'magnet_entities_widget_id'
wp option delete 'magnet_entities_widget_order'
wp option delete 'magnet_intext_widget_id'
wp option delete 'magnet_intext_widget_order'
wp option delete 'magnet_follow_widget_id'
wp option delete 'magnet_follow_widget_order'
wp option delete 'magnet_customer_id'
wp option delete 'magnet_related_page_id'
wp option delete 'magnet_related_entity_id'
wp option delete 'magnet_entity_follow_widget_id'
wp option delete 'magnet_entity_follow_widget_top'
wp option delete 'magnet_entity_follow_widget_bottom'

