#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-extended-modules'
wp option delete 'wpextended__notices'
wp option delete 'wpextended_activation_time'
wp option delete 'wpextended_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wpext_license_key'
wp option delete 'wpext_lisence-status'
wp option delete 'wpext_lisence_success'
wp option delete 'wpext_lisence-success'
wp option delete 'wpext_plugin_reset_action'
wp option delete 'wpext_show_plugin_menu_action'
wp option delete 'wpext_admin_menu_favorite'
wp option delete 'wpext_admin_column_fields_users'
wp option delete 'wpext_admin_column_fields_comments'
wp option delete 'wpext_admin_column_fields_media'
wp option delete 'wpext-admin-column'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpext_admin_column_fields_%'"
wp option delete 'wpext_admin_color'
wp option delete 'wpext-block-username-tag'
wp option delete 'wpext-disable_gutenberg_editor'
wp option delete 'wpext-disable-dashboard-widget'
wp option delete 'wpext_clean_admin_dashboard'
wp option delete 'wpext-user-sections-toggle'
wp option delete 'wpext-user-sections'
wp option delete 'wpext-snippets'
wp option delete 'wpext-change-wp-admin-default-url'
wp option delete 'wpext-external-permalink-url'
wp option delete 'wpext-hide_admin_bar'
wp option delete 'wpext-notices-config'
wp option delete 'wpext-user-login-attempt-config'
wp option delete 'login_attempts'
wp option delete 'lockout_time'
wp option delete 'wpext-maintanance_mode'
wp option delete 'wpextended_menu-editor'
wp option delete 'wpext-user-tidy-nav'
wp option delete 'wpext-user-tidy-nav-store-user-id'
wp option delete 'wpext-user-tidy-nav-store-user-role'
wp option delete 'wpext_seprate_superadmin'
wp option delete 'wpext-hide-menu-main'
wp option delete 'wpext-pixel-tag'
wp option delete 'wpext-post-type-order'
wp option delete 'quick-replace-feature-image'
wp option delete 'wpext_smtp_from_name'
wp option delete 'wpext_smtp_from_email'
wp option delete 'wpext_smtp_host'
wp option delete 'wpext_smtp_port'
wp option delete 'wpext_smtp_username'
wp option delete 'wpext_smtp_password'
wp option delete 'wpext_disable_email_Log'
wp option delete 'smtp_post_number'

# Delete Transients
wp transient delete 'snippets_deleted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_code_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_code_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_code_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_code_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_code_sesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_code_sesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_code_sesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_code_sesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_executed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_executed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_executed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_executed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_links_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_links_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_links_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_links_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpext_menu_item_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpext_menu_item_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpext_menu_item_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpext_menu_item_visible'"
