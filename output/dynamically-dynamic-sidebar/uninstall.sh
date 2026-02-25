#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dds_sidebars'
wp option delete 'dds_target_widget_area'
wp option delete 'dds_area_for_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dds_widget_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dds_widget_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dds_widget_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dds_widget_area'"
