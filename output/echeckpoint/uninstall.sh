#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eCheckpoint_pre_settings'
wp option delete 'eCheckpoint_enable_50_state_fee'
wp option delete 'eCheckpoint_fee_percentage'
wp option delete 'eCheckpoint_minimum_fee_per_item'
wp option delete 'eCheckpoint_maximum_fee_per_item'
wp option delete 'eCheckpoint_calculate_fee_on_multiples'
wp option delete 'eCheckpoint_compliance_fee_message'
wp option delete 'eCheckpoint_excluded_states'
wp option delete 'eCheckpoint_API_Key_Value'
wp option delete 'eCheckpoint_Message_Checkbox_Value'
wp option delete 'eCheckpoint_OnHold_Checkbox_Value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_type'"
