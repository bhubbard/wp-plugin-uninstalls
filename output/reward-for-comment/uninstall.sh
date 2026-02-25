#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfcx_satoshi_balance'
wp option delete 'rfcx_min_satoshi'
wp option delete 'rfcx_max_satoshi'
wp option delete 'rfcx_notify_empty'
wp option delete 'rfcx_notify_reward'
wp option delete 'rfcx_satoshi_api_key'
wp option delete 'rfcx_system_ready'
wp option delete 'rfcx_txt_satoshi'
wp option delete 'rfcx_txt_chars'
wp option delete 'rfcx_extra_satoshi'
wp option delete 'rfcx_extra_words'
wp option delete 'site_admins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'satoshi_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'satoshi_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'satoshi_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'satoshi_reward'"
