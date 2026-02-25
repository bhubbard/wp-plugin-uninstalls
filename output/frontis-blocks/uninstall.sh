#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'frontis_blocks_do_activation_redirect'
wp option delete 'frontis_blocks_version'
wp option delete 'fb_global_colors'
wp option delete 'fb_automatic_block_recovery'
wp option delete 'fb_enable_quick_action_bar'
wp option delete 'fb_copy_paste_style'
wp option delete 'fb_gradient_colors'
wp option delete 'fb_globaltypo'
wp option delete 'frontisblockspro_license_options'
wp option delete 'frontis_theme_options'
wp option delete 'fb_global_asset_updated'
wp option delete 'fb_custom_colors'
wp option delete 'fb_custom_gradient_colors'
wp option delete 'fb_typography'
wp option delete 'fb_custom_typography'
wp option delete 'fb_fontfamilies'
wp option delete 'fb_custom_css'
wp option delete 'global_site_colors'
wp option delete 'fb_global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fb_typography_%'"
wp option delete 'fb_update_allowed_blocks'
wp option delete 'fb_active_blocks'
wp option delete 'fb_custom_icons_name'
wp option delete 'fb_custom_icons'
wp option delete 'fb_plugin_version'
wp option delete 'fb_last_updated'
wp option delete 'frontis_blocks_settings'
wp option delete 'frontis_blocks_active_blocks'
wp option delete 'fb_google_fonts_url'
wp option delete 'fb_default_content_width'
wp option delete 'fb_container_column_gap'
wp option delete 'fb_container_row_gap'
wp option delete 'fb_container_padding'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'google_fonts_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fb_block_%' OR option_name LIKE '_site_transient_fb_block_%'"
wp transient delete 'update_plugins'
wp transient delete 'frontis_cf7_form_list'
wp transient delete 'frontis_cf7_form_html'
wp transient delete 'frontis_fluent_forms_list'
wp transient delete 'frontis_related_taxonomy'
wp transient delete 'frontis_authors_with_posts'
wp transient delete 'frontis_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'fb_process_assets_generation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_taxonomy_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_taxonomy_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_taxonomy_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_taxonomy_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frontis_template_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frontis_template_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frontis_template_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frontis_template_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frontis_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frontis_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frontis_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frontis_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'liked_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'liked_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'liked_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'liked_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_likes_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_likes_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_likes_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_likes_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontis_blocks_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontis_blocks_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontis_blocks_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontis_blocks_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generate_critical_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generate_critical_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generate_critical_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generate_critical_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_page_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_page_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_page_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_page_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_page_assets_generation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_page_assets_generation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_page_assets_generation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_page_assets_generation'"
