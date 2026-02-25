#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ttckvsbh_accounts'
wp option delete 'ttckvsbh_rd_order'
wp option delete 'woocommerce_ttckvsbh_settings'
wp option delete 'ttckvsbh_client_id'
wp option delete 'ttckvsbh_api_key'

