#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taros_bot_id'
wp option delete 'taros_bot_name'
wp option delete 'taros_widget_enabled'

