#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms-api-key'
wp option delete 'sms-api-username'
wp option delete 'sms-sender-id'

