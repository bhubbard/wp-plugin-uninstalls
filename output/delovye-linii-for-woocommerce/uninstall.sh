#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terminal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terminal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terminal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terminal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dellin_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dellin_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dellin_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dellin_track_id'"
