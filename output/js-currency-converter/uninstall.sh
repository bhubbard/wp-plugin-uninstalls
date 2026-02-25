#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcc_target_class'
wp option delete 'jcc_exchange_rates_api'
wp option delete 'jcc_currency'
wp option delete 'jcc_exchange_rates'
wp option delete 'jcc_exchange_rates_from'

