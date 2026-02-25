#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcses_sort_toggle'
wp option delete 'wcses_min_max_quantity_options'
wp option delete 'active_sitewide_plugins'

