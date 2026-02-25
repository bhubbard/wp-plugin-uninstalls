#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paldesk-api-key-chat'
wp option delete 'paldesk-api-key-notification'
wp option delete 'paldesk-api-key-feedback'

