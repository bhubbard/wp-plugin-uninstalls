#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csm_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'csm_notice_user_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'csm_notice_user_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'csm_notice_user_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'csm_notice_user_id_%'"
