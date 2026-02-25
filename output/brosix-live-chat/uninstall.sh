#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brosix-chat-api-key'
wp option delete 'brosix-chat-id'
wp option delete 'brosix-chat-status'
wp option delete 'brosix-home-status'
wp option delete 'brosix-chat-network'

