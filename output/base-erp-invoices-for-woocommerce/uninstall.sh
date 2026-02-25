#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baseerp_api_environment_endpoint'
wp option delete 'baseerp_debug'
wp option delete 'baseerp_shipping_company_id'
wp option delete 'baseerp_bank_id'
wp option delete 'baseerp_api_key'
wp option delete 'baseerp_webhook_auth_token'

# Delete Transients
wp transient delete 'baseerp_bulk_nf_messages'
wp transient delete 'baseerp_notice_transient'

