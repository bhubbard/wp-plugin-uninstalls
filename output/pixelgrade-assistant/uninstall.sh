#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixassist_activated_themes'
wp option delete 'pixelgrade_assistant_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'recently_activated'
wp option delete 'pixassist_wordpress_minimum_supported'
wp option delete 'nova_menu_order'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete '_pixassist_activation_redirect'
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'jetpack-portfolio-count-cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixelgrade_user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixelgrade_user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixelgrade_user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixelgrade_user_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixassist_oauth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixassist_oauth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixassist_oauth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixassist_oauth_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixassist_oauth_token_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixassist_oauth_token_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixassist_oauth_token_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixassist_oauth_token_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixassist_oauth_verifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixassist_oauth_verifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixassist_oauth_verifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixassist_oauth_verifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixassist_user_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixassist_user_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixassist_user_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixassist_user_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixelgrade_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixelgrade_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixelgrade_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixelgrade_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixelgrade_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixelgrade_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixelgrade_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixelgrade_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixassist_force_disconnected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixassist_force_disconnected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixassist_force_disconnected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixassist_force_disconnected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
