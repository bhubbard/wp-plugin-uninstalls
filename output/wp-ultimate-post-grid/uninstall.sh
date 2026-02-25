#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpupg_activated'
wp option delete 'wpupg_flush'
wp option delete 'wpupg_migrated_to_version'
wp option delete 'wpupg_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpupg_template_%'"
wp option delete 'wpupg_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_link_behaviour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_link_behaviour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_link_behaviour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_link_behaviour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_link_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_link_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_link_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_link_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_image_id'"
