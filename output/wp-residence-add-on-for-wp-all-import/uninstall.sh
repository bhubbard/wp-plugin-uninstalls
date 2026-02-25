#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpestate_custom_fields_list'
wp option delete 'wp_estate_custom_fields'
wp option delete 'wpresaddon_can_update_slider'
wp option delete 'wp_estate_theme_slider'
wp option delete 'wp_estate_feature_list'
wp option delete 'wp_estate_status_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_theme_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_theme_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_theme_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_theme_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'temp_is_update_hidden_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'temp_is_update_hidden_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'temp_is_update_hidden_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'temp_is_update_hidden_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hidden_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hidden_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hidden_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hidden_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_to_attach'"
