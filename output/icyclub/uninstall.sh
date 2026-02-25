#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'item_details_page'
wp option delete 'widget_businessup_slider-widget'
wp option delete 'widget_businessup_service_widget'
wp option delete 'widget_archives'
wp option delete 'widget_search'
wp option delete 'sidebars_widgets'
wp option delete 'widget_transportex_slider-widget'
wp option delete 'widget_transportex_service_widget'
wp option delete 'widget_yoga_slider-widget'
wp option delete 'widget_yoga_service_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
