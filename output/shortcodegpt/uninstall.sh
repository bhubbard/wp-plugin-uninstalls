#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgpt_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgpt_faq_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgpt_faq_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgpt_faq_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgpt_faq_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sgpt_char_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sgpt_char_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sgpt_char_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sgpt_char_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sgpt_refresh_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sgpt_refresh_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sgpt_refresh_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sgpt_refresh_time'"
