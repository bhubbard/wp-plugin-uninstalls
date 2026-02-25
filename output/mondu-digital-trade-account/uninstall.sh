#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mondu_trade_account_options'
wp option delete '_mondu_trade_webhooks_registered'
wp option delete '_mondu_trade_webhooks_secret'

