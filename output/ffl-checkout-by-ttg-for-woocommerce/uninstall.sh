#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FFLCheckoutByTTG_enable_sot_license_upload'
wp option delete 'FFLCheckoutByTTG_API_KEY'
wp option delete 'FFLCheckoutByTTG_initial_map_latitude'
wp option delete 'FFLCheckoutByTTG_initial_map_longitude'
wp option delete 'FFLCheckoutByTTG_initial_map_zoom'
wp option delete 'ttg_ffl_checkout_block_location'
wp option delete 'FFLCheckoutByTTG_checkout_title_for_ffl_items'
wp option delete 'FFLCheckoutByTTG_checkout_title_for_nfa_items'
wp option delete 'FFLCheckoutByTTG_checkout_message_for_ffl_map'
wp option delete 'FFLCheckoutByTTG_checkout_message_for_ffl_license'
wp option delete 'FFLCheckoutByTTG_enable_interactive_map'
wp option delete 'FFLCheckoutByTTG_enable_unverified_ffls'
wp option delete 'FFLCheckoutByTTG_enable_file_upload'
wp option delete 'FFLCheckoutByTTG_enable_skip_ffl_proccess'
wp option delete 'woocommerce_ship_to_destination'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ttg_ffl_requires_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ttg_ffl_requires_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ttg_ffl_requires_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ttg_ffl_requires_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ttg_ffl_requires_sot_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ttg_ffl_requires_sot_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ttg_ffl_requires_sot_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ttg_ffl_requires_sot_license'"
