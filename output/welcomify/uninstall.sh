#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_umy_wdw_templates'
wp option delete 'umy_wdw_hide_from_subsites'
wp option delete 'umy_wdw_version'

# Delete Transients
wp transient delete 'umy_wdw_settings_saved'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
