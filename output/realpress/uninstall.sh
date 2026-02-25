#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'realpress_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'realpress_setup_wizard_completed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_become_an_agent_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_become_an_agent_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_become_an_agent_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_become_an_agent_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_property_average_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_property_average_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_property_average_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_property_average_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_my_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_my_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_my_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_my_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
