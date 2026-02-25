#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp option delete 'better_chat_support_version'
wp option delete 'better_chat_support_first_version'
wp option delete 'better_chat_support_activation_date'
wp option delete 'better_chat_support_db_version'
wp option delete 'better_chat_support_review_notice_dismiss'
wp option delete 'mcs-opt'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_BetterChatSupport_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%'"
