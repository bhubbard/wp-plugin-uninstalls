#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pofw_pizzatoppings_min_selection'
wp option delete 'pofw_pizzatoppings_max_selection'
wp option delete 'pofw_pizzatoppings_min_message'
wp option delete 'pofw_pizzatoppings_max_message'
wp option delete 'active_sitewide_plugins'

