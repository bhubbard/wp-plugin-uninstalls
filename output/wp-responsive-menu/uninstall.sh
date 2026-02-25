#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprmenu_options'
wp option delete 'wprmenu_demo_id'
wp option delete 'wpr_optionsframework'

# Delete Transients
wp transient delete 'wpr_live_settings'
wp transient delete 'wprm_api_demo_items_list'

