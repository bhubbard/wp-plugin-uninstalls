#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpan_disable_help_tabs'
wp option delete '_wpan_disable_notice_posts'
wp option delete '_wpan_animate_help_tab'
wp option delete '_wpan_hide_default_help_tabs'
wp option delete '_wpan_enable_global_help_tab'
wp option delete '_wpan_global_help_tab_title'
wp option delete '_wpan_global_help_tab_body'
wp option delete '_wpan_global_help_tab_image_id'
wp option delete '_wpan_enable_admin_footer_text'
wp option delete '_wpan_admin_footer_text'
wp option delete '_wpan_admin_footer_icon_image_id'
wp option delete 'acf_version'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpan_help_tabs_%' OR option_name LIKE '_site_transient_wpan_help_tabs_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpan_notices_%' OR option_name LIKE '_site_transient_wpan_notices_%'"
wp transient delete 'update_plugins'
wp transient delete 'acf_plugin_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpan_has_seen_help_tab_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpan_has_seen_help_tab_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpan_has_seen_help_tab_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpan_has_seen_help_tab_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
