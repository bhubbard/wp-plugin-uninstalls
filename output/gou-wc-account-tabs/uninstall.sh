#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'gwats_config_page_settings'
wp option delete 'woocommerce_gwat_config'
wp option delete 'woocommerce_gwat_layout'
wp option delete 'gwats_add_update_endpoints'

