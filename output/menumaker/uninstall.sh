#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'id_before_menu'
wp option delete 'id_menumaker_pullpage'
wp option delete 'id_before_item'
wp option delete 'id_after_item'
wp option delete 'id_before_active_item'
wp option delete 'id_after_active_item'
wp option delete 'id_after_menu'
wp option delete 'id_menumaker_number'
wp option delete 'id_menumaker_maxnum'
wp option delete 'id_menumaker_menu_1'

