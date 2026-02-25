#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_gateway_lknpbsp_payment_api_key'
wp option delete 'llms_gateway_lknpbsp_payment_token_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_key'"
