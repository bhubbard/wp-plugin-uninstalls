#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajaxpress_diagnostic_permission'
wp option delete 'ajaxpress_license'
wp option delete 'ajaxpress_deactivate_feedbacks'
wp option delete 'ajaxpress_migrated_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_for_admins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%loader_layout'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxpress_tour_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxpress_tour_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxpress_tour_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxpress_tour_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxpress_tour_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxpress_tour_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxpress_tour_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxpress_tour_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxpress_tour_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxpress_tour_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxpress_tour_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxpress_tour_dismissed_at'"
