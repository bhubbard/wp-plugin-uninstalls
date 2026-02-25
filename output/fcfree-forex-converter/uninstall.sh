#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FCFree_exchange_rate_api_key'
wp option delete 'FCFree_currency_api_key_2'
wp option delete 'FCFree_currency_api_key_3'
wp option delete 'FCFree_currency_api_key_4'
wp option delete 'FCFree_active_api'

