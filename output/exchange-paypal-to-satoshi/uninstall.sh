#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppse_owner_email'
wp option delete 'ppse_exchange_processor_url'
wp option delete 'ppse_transaction_satoshi_min'
wp option delete 'ppse_transaction_satoshi_max'
wp option delete 'ppse_profit_percent'
wp option delete 'ppse_profit_fiat'
wp option delete 'ppse_official_rate'
wp option delete 'ppse_paypal_email'
wp option delete 'ppse_satoshi_api_key'
wp option delete 'ppse_satoshi_balance'
wp option delete 'ppse_offline_message'
wp option delete 'ppse_system_ready'
wp option delete 'ppse_force_offline'
wp option delete 'ppse_official_rate_checked'
wp option delete 'ppse_official_rate_check_errors'
wp option delete 'ppse_notify_error'
wp option delete 'ppse_notify_warning'
wp option delete 'ppse_notify_transaction'

