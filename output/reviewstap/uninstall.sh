#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewstap_bus_id'
wp option delete 'reviewstap_api_key'
wp option delete 'reviewstap_secret_key'
wp option delete 'reviewstap_auto_add_users'
wp option delete 'reviewstap_auto_add_wc_customers'
wp option delete 'reviewstap_auto_add_wc_orders'

