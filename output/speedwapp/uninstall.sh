#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedwapp_initial_version'
wp option delete '_speedwapp_ID_preview'
wp option delete '_speedwapp_html_preview_data'
wp option delete 'speedwapp_api_token'
wp option delete '_speedwapp_css_libs'
wp option delete '_speedwapp_js_libs'
wp option delete 'sidebars_widgets'
wp option delete 'Speedwapp_Settings'
wp option delete 'wp_speedwapp_settings'
wp option delete 'wp_speedwapp_display'
wp option delete 'wp_speedwapp_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speedwapp_json_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speedwapp_json_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speedwapp_json_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speedwapp_json_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedwapp_page_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedwapp_page_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedwapp_page_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedwapp_page_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_speedwapp_editor_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_speedwapp_editor_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_speedwapp_editor_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_speedwapp_editor_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speedwapp_html_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speedwapp_html_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speedwapp_html_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speedwapp_html_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speedwapp_css_libs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speedwapp_css_libs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speedwapp_css_libs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speedwapp_css_libs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speedwapp_js_libs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speedwapp_js_libs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speedwapp_js_libs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speedwapp_js_libs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedwapp_api_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedwapp_api_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedwapp_api_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedwapp_api_token'"
