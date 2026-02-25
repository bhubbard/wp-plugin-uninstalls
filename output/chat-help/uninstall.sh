#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chat_help_version'
wp option delete 'chat_help_first_version'
wp option delete 'chat_help_activation_date'
wp option delete 'chat_help_db_version'
wp option delete 'cwp_option'
wp option delete 'chat_help_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp option delete 'ch_wooCommerce'
wp option delete 'ch_settings'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_CHAT_HELP_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_chat_help_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_chat_help_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_chat_help_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_chat_help_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
