#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'super_blank_primary_menu_id'
wp option delete 'super_blank_footer_menu_id'
wp option delete 'wpforms_settings'
wp option delete 'wpforms_activation_redirect'
wp option delete 'wpforms_pointers'
wp option delete 'elementor_active_kit'
wp option delete 'elementor_install_history'
wp option delete 'elementor_checklist'
wp option delete 'theme_mods_astra'
wp option delete 'allowedthemes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_dismissed_editor_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_dismissed_editor_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_dismissed_editor_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_dismissed_editor_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-title-bar-display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-featured-img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-featured-img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-featured-img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-featured-img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-sidebar-layout'"
