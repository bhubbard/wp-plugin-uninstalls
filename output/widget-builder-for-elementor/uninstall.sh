#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_ewb_skin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_ewb_skin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_ewb_skin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_ewb_skin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_ewb_control_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_ewb_control_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_ewb_control_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_ewb_control_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewb_plugin_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewb_plugin_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewb_plugin_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewb_plugin_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
