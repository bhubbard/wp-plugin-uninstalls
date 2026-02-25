#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'on_send_admin'
wp option delete 'on_send_subscriber'
wp option delete 'messenger_email_to'

