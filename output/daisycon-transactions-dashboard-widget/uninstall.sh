#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daisycon_transactions_publisher_id'
wp option delete 'daisycon_transactions_username'
wp option delete 'daisycon_transactions_password'

