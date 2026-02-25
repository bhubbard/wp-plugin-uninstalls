#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'finachub_mpesa_checkout_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_finachub_mpesa_checkout_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_finachub_mpesa_checkout_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_finachub_mpesa_checkout_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_finachub_mpesa_checkout_request_id'"
