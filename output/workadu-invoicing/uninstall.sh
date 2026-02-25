#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'workadu_invoicing_banners'
wp option delete 'workadu_invoicing_logo'
wp option delete 'workadu_api_key'
wp option delete 'workadu_receipt_series'
wp option delete 'workadu_invoice_series'
wp option delete 'workadu_send_to_mail'
wp option delete 'workadu_send_to_aade'
wp option delete 'workadu_cash'
wp option delete 'workadu_credit_card'
wp option delete 'workadu_bank_transfer'
wp option delete 'workadu_vat_number_field'
wp option delete 'workadu_billing_address_field'
wp option delete 'workadu_billing_country_field'
wp option delete 'workadu_series'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'workadu_selected_series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'workadu_selected_series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'workadu_selected_series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'workadu_selected_series'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aade_mark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aade_mark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aade_mark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aade_mark'"
