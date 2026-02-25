#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_cer_rates'
wp option delete 'alg_cer_server'
wp option delete 'alg_cer_server_api_key_fixer'
wp option delete 'alg_cer_cron_data'
wp option delete 'alg_cer_update_period'
wp option delete 'alg_currency_exchange_rates_version'

