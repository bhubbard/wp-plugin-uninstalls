#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_gateway_pagseguro-v1_logging_enabled'
wp option delete 'llms_gateway_pagseguro-v1_payment_instructions'
wp option delete 'llms_gateway_pagseguro-v1_plugin_license'
wp option delete 'llms_gateway_pagseguro-v1_email'
wp option delete 'llms_gateway_pagseguro-v1_token_key'
wp option delete 'llms_gateway_pagseguro-v1_env_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_key'"
