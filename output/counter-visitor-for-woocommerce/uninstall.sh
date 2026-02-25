#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wcv_timeout_limit'
wp option delete '_wcv_position'
wp option delete '_wcv_icon'
wp option delete '_wcv_weight_block'
wp option delete '_wcv_message'
wp option delete '_wcv_message_one'
wp option delete '_wcv_use_js'
wp option delete '_wcvisitor_after_price'
wp option delete '_wcvisitor_only_one_hide'
wp option delete '_wcv_fake_mode'
wp option delete '_wcv_fake_mode_from'
wp option delete '_wcv_fake_mode_to'
wp option delete '_wcv_live_mode'
wp option delete '_wcv_fontawesome'
wp option delete '_wcv_live_seconds'
wp option delete 'counter-visitor-newsletter'
wp option delete '_WCVisitor_folder_name'

# Clear Cron Jobs
wp cron event delete 'wcvisitor_delete_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcvisitor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcvisitor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcvisitor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcvisitor_version'"
