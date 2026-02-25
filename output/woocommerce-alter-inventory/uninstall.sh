#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_alter_inventory_tab_payament_section'
wp option delete 'alter_inventory_bill_ship_section'
wp option delete 'alter_inventory_shortcodes_section'

