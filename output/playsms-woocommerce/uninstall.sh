#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'playSMS-settings'
wp option delete 'playSMS-apiKey'
wp option delete 'playSMS-apiPass'
wp option delete 'playSMS-apiHeader'
wp option delete 'PlaySMS_events_options'
wp option delete 'smsApi-senderHeaders'

