#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdt_settings_v2_migrated'
wp option delete 'pdt_settings'
wp option delete 'pdt_menu_items'

