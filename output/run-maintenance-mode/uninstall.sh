#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qmmode_enable_maintenance'
wp option delete 'qmmode_custom_message'
wp option delete 'qmmode_custom_title'

