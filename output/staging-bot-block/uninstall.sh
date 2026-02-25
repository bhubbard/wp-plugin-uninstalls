#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'staging_bot_block_options'
wp option delete 'staging_bot_block_show_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_redirect_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_redirect_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_redirect_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_redirect_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_redirect_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_redirect_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_redirect_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_redirect_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_redirect_enable_warning_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_redirect_enable_warning_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_redirect_enable_warning_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_redirect_enable_warning_banner'"
