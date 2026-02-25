#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosg_settings'
wp option delete 'woosg_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosg_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_including_main'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_including_main'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_including_main'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_including_main'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_show_atc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_show_atc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_show_atc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_show_atc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_custom_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_custom_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_custom_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_custom_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_before_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_before_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_before_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_before_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_after_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_after_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_after_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_after_text'"
