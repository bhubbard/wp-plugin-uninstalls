#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctcc_options_settings'
wp option delete 'ctcc_content_settings'
wp option delete 'ctcc_styles_settings'
wp option delete 'catapult_cookie_options'
wp option delete 'ggcp_more_info_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctcc_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctcc_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctcc_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctcc_exclude'"
