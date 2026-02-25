#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_raffle_setting_paypal'
wp option delete 'wp_raffle_setting_tickets'
wp option delete 'wp_raffle_setting_users'
wp option delete 'wp_raffle_setting_events'
wp option delete 'wp_raffle_setting_prizes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_raffle_setting_%'"

