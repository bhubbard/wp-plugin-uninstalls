#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'callback_track'
wp option delete 'callback_messages'
wp option delete 'callback_settings'
wp option delete 'mailinglist_settings'
wp option delete 'callback_fields'

