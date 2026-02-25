#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'ot_css_file_paths'
wp option delete 'sh_plugin_options'
wp option delete 'hero_latest_dpn'
wp option delete 'torus_notice_dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sh_meta_box_bg_effect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sh_meta_box_bg_effect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sh_meta_box_bg_effect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sh_meta_box_bg_effect'"
