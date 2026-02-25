#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_discord_integration_settings'
wp option delete 'woocommerce_wc_slack_integration_settings'

