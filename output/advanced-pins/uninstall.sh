#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apx_settings_tutorial_shown'
wp option delete 'apx_editor_tutorial_shown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apx_pinterest_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apx_pinterest_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apx_pinterest_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apx_pinterest_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apx_pin_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apx_pin_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apx_pin_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apx_pin_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'apx_traffic_post_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'apx_traffic_post_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'apx_traffic_post_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'apx_traffic_post_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apx_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apx_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apx_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apx_description'"
