#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pb_install_time'
wp option delete 'pb_options'
wp option delete 'pbg_global_features'
wp option delete 'pbg_blocks_settings'
wp option delete 'pbg_performance_options'
wp option delete 'pbg_integrations_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'pbg_editor_css_hash'
wp option delete 'pbg_editor_css_version'
wp option delete 'pbg_global_layout'
wp option delete 'sidebars_widgets'
wp option delete 'widget_block'
wp option delete 'pbg_global_colors_to_default'
wp option delete 'pbg_global_typography_to_default'
wp option delete 'pbg_global_typography'
wp option delete 'pbg_global_color_palette'
wp option delete 'pbg_global_colors'
wp option delete 'pbg_custom_colors'
wp option delete 'pbg_global_color_palettes'
wp option delete 'pbg_loaded_fonts'
wp option delete 'pbg_downloaded_font_files'
wp option delete 'pbg_local_font_files'
wp option delete 'pbg_favorite_templates'
wp option delete '_pbg_plugin_pointer_priority'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pb_rollback_versions_%' OR option_name LIKE '_site_transient_pb_rollback_versions_%'"
wp transient delete 'update_plugins'
wp transient delete 'pbg_cleanup_done'
wp transient delete 'pattern_templates'
wp transient delete 'pattern_categories'
wp transient delete 'pattern_blocks'
wp transient delete 'pbg_cm25_pointer_dismiss'

# Clear Cron Jobs
wp cron event delete 'pbg_delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_premium_css_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_premium_css_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_premium_css_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_premium_css_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_premium_css_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_premium_css_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_premium_css_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_premium_css_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_premium_css_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_premium_css_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_premium_css_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_premium_css_content_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pbg_blocks_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pbg_blocks_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pbg_blocks_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pbg_blocks_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_premium_blocks_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_premium_blocks_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_premium_blocks_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_premium_blocks_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_premium_blocks_local_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_premium_blocks_local_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_premium_blocks_local_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_premium_blocks_local_image_hash'"
