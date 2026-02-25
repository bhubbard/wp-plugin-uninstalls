#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spreebie_barter_ethereum_address'
wp option delete 'spreebie_barter_widget_text'
wp option delete 'spreebie_barter_error_stage_children'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_settled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_settled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_settled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_settled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_token'"
