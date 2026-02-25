#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bunny_fonts'
wp option delete 'maxi_ai_model'
wp option delete 'maxi_pro_network'
wp option delete 'local_fonts'
wp option delete 'local_fonts_uploaded'
wp option delete 'maxiblocks_current_starter_site'
wp option delete 'maxi_pro'
wp option delete 'remove_local_fonts'
wp option delete 'google_api_key_option'
wp option delete 'openai_api_key_option'
wp option delete 'maxi_quick_start_initial_theme'
wp option delete 'maxi_ai_language'
wp option delete 'maxi_ai_tone'
wp option delete 'maxi_ai_site_description'
wp option delete 'maxi_ai_audience'
wp option delete 'maxi_ai_site_goal'
wp option delete 'maxi_ai_services'
wp option delete 'maxi_ai_business_name'
wp option delete 'maxi_ai_business_info'
wp option delete 'hide_tooltips'
wp option delete 'hide_fse_resizable_handles'
wp option delete 'hide_gutenberg_responsive_preview'
wp option delete 'maxi_show_indicators'
wp option delete 'maxi_breakpoints'
wp option delete 'maxi_blocks_version'
wp option delete 'accessibility_option'
wp option delete 'maxi_blocks_custom_fonts'
wp option delete 'maxi_plugin_db_tables_created'
wp option delete 'maxi_blocks_quick_start_completed'
wp option delete 'maxi_blocks_link_color_migrated'
wp option delete 'maxi_blocks_text_wrap_migrated'
wp option delete 'maxi_blocks_sc_fonts_migration_done'
wp option delete 'maxiblocks_go_templates_imported'
wp option delete 'maxiblocks_go_templates_version'
wp option delete 'maxiblocks_go_has_link_migration_completed'
wp option delete 'maxi_blocks_db_notice_dismissed'

# Delete Transients
wp transient delete 'maxi_auth_registry'
wp transient delete 'maxi_blocks_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_total_count' OR option_name LIKE '_site_transient_%_total_count'"

# Clear Cron Jobs
wp cron event delete 'maxi_blocks_migrate_sc_fonts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maxi_blocks_master_toolbar_open'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maxi_blocks_master_toolbar_open'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maxi_blocks_master_toolbar_open'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maxi_blocks_master_toolbar_open'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
