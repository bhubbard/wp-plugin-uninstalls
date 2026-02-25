#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wip_incoming_settings'
wp option delete 'wip_incoming_fontlist'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_incoming_lite_notice_user_id_%'"
