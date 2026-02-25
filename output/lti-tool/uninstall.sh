#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lti_tool_options'
wp option delete 'lti_tool_site'
wp option delete 'lti_choices'
wp option delete 'ltisite'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lti_tool_platform_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lti_tool_platform_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lti_tool_platform_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lti_tool_platform_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lti_tool_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lti_tool_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lti_tool_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lti_tool_user_id'"
