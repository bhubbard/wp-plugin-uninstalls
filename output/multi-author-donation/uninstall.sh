#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multi_author_donation_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multi_author_donation_paypal_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multi_author_donation_paypal_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multi_author_donation_paypal_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multi_author_donation_paypal_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multi_author_donation_stripe_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multi_author_donation_stripe_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multi_author_donation_stripe_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multi_author_donation_stripe_account_id'"
