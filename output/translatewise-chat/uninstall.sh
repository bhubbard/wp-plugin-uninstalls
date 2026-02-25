#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tw-client-key'
wp option delete 'tw-chat-enabled'
wp option delete 'tw-height-offset'
wp option delete 'tw-hide-popouts'
wp option delete 'tw-hide-minimized'

