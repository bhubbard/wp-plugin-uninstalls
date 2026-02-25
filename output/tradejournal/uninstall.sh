#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tradejournal_merge_accounts'
wp option delete 'tradejournal_merge_time_tolerance'
wp option delete 'tradejournal_merge_round_to_minute'
wp option delete 'tradejournal_instrument_multipliers'
wp option delete 'tradejournal_setups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trade_repeater'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trade_repeater'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trade_repeater'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trade_repeater'"
