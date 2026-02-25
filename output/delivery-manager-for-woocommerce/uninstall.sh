#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dman_is_auto_complete_delivery'
wp option delete 'dman_is_complete_order_on_delivery'
wp option delete 'dman_deliveries_menu_title'
wp option delete 'dman_version'
wp option delete 'dman_flash_notices'

