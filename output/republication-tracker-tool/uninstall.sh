#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'republication_tracker_tool_default_post_distribution'
wp option delete 'republication_tracker_tool_display_attribution'
wp option delete 'republication_tracker_tool_default_attachment_distribution'
wp option delete 'republication_tracker_tool_media_distribution'
wp option delete 'republication_tracker_tool_analytics_ga4_id'
wp option delete 'republication_tracker_tool_analytics_ga4_secret'
wp option delete 'republication_tracker_additional_tracking_code'
wp option delete 'republication_tracker_tool_policy'
wp option delete 'republication_tracker_tool_analytics_id'
wp option delete 'republication_tracker_tool_license'
wp option delete 'republication_tracker_tool_enable_plain_text'
wp option delete 'parsely'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'republication-tracker-tool-hide-widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'republication-tracker-tool-hide-widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'republication-tracker-tool-hide-widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'republication-tracker-tool-hide-widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'republication_tracker_tool_sharing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'republication_tracker_tool_sharing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'republication_tracker_tool_sharing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'republication_tracker_tool_sharing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newspack_post_subtitle'"
