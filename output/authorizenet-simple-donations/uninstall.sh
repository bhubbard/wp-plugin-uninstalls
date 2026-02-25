#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wds_donation_login_id'
wp option delete 'wds_donation_transaction_key'
wp option delete 'wds_donation_mode'
wp option delete 'wds_processor_description'
wp option delete 'wds_thankyou_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donor_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donor_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donor_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donor_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donor_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donor_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donor_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donor_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donor_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donor_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donor_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donor_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'approval_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'approval_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'approval_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'approval_code'"
