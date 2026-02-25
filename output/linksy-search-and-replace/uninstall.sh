#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linksy_link_analysis_cron_enabled'
wp option delete 'linksy_link_analysis_offset'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_editor_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_editor_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_editor_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_editor_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_content_before_more'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_content_before_more'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_content_before_more'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_content_before_more'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_enabled'"
