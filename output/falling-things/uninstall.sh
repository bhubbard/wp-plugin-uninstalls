#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'falling_items_quantity'
wp option delete 'falling_items_speed'
wp option delete 'falling_items_move_lr'
wp option delete 'falling_items_display_on'

