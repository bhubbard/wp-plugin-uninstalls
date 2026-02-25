#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alv_settings_positions'
wp option delete 'alv_settings_tooltip_pos'
wp option delete 'alv_settings_hide_emt_terms'
wp option delete 'alv_settings_exl_hidden_product'
wp option delete 'alv_settings_exl_unpurcha_product'
wp option delete 'alv_settings_link_individual_product'
wp option delete 'alv_settings_use_unfollow_links'
wp option delete 'dsalv_db_version'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect_ds_advanced_linked_variations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsalv_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsalv_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsalv_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsalv_link'"
