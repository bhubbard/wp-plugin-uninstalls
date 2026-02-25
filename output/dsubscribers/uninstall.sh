#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'dsubscribers_unsubscribed_msg'
wp option delete 'dsubscribers_dont_exists_msg'
wp option delete 'dsubscribers_exists_msg'
wp option delete 'dsubscribers_send_checkbox'
wp option delete 'dsubscribers_message_block'
wp option delete 'dsubscribers_subscribed_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

