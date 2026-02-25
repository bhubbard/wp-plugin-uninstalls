#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pekiwctt_api_url'
wp option delete 'pekiwctt_status_url'
wp option delete 'pekiwctt_employee_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pekiwctt_dismiss_connect_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pekiwctt_dismiss_connect_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pekiwctt_dismiss_connect_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pekiwctt_dismiss_connect_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tripletex_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tripletex_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tripletex_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tripletex_invoice_id'"
