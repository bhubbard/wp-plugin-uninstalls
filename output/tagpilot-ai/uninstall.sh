#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tagpilot_ai_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tagpilot_ai_terms_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tagpilot_ai_terms_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tagpilot_ai_terms_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tagpilot_ai_terms_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tagpilot_ai_content_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tagpilot_ai_content_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tagpilot_ai_content_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tagpilot_ai_content_log'"
