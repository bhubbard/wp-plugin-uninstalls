#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'specia_media_id'
wp option delete 'widget_archives'
wp option delete 'widget_search'
wp option delete 'widget_meta'
wp option delete 'widget_specia_feature_widget'
wp option delete 'sidebars_widgets'
wp option delete 'item_details_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_icon_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_icon_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_icon_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_icon_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
