#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'update_core'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tk_image_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tk_image_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tk_image_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tk_image_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'envato_tk_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'envato_tk_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'envato_tk_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'envato_tk_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_conditions'"
