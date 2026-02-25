#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctcp_merchant_id'
wp option delete 'ctc_merchant_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctcp_payment_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctcp_payment_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctcp_payment_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctcp_payment_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctcp_card_exp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctcp_card_exp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctcp_card_exp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctcp_card_exp_date'"
