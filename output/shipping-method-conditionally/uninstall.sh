#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ship_hide_req'
wp option delete 'opening_hours_mon'
wp option delete 'opening_hours_tue'
wp option delete 'opening_hours_wed'
wp option delete 'opening_hours_thu'
wp option delete 'opening_hours_fri'
wp option delete 'opening_hours_sat'
wp option delete 'opening_hours_sun'
wp option delete 'select_time_zone'
wp option delete 'ship_hide_method_id'
wp option delete 'ship_hide_method_title'
wp option delete 'woo_same_installed'
wp option delete 'woo_same_version'

