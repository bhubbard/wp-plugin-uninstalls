#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weaverx_plus_backup'
wp option delete 'weaverx5_settings'
wp option delete 'wvrx_toggle_shortcode_prefix'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wvrx_ts_pp_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wvrx_ts_pp_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wvrx_ts_pp_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wvrx_ts_pp_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wvrx_ts_pp_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wvrx_ts_pp_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wvrx_ts_pp_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wvrx_ts_pp_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
