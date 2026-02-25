#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mantrabrain_starter_sites_admin_footer_text_rated'
wp option delete 'mantrabrain_starter_sites_activated_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_scheme_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'mantrabrain_get_theme_demo_configuration'
wp transient delete '_mantrabrain_starter_sites_activation_redirect'
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
