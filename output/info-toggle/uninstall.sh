#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'info_email'
wp option delete 'info_phone'
wp option delete 'info_clock'
wp option delete 'add_menu_to_replace'
wp option delete 'pixel_width'
wp option delete 'menu_position'
wp option delete 'menu_label'

