#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_woobundle_notice_%'"
wp option delete 'rtwpvg_pro_active'
wp option delete 'RTWPVG_VERSION'
wp option delete 'rtwpvg'
wp option delete 'woobundle_black_friday_offer_2024'
wp option delete 'rtwpvg_ny_2023'
wp option delete 'rtwpvg_plugin_activation_time'
wp option delete 'rtwpvg_spare_me'
wp option delete 'rtwpvg_remind_me'
wp option delete 'rtwpvg_rated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'rtwpvg_pro_activate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtwpvg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtwpvg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtwpvg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtwpvg_disable_valiation_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_duplicate_of_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
