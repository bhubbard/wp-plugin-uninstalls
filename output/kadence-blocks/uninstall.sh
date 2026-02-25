#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kadence_blocks_activecampaign_api_key'
wp option delete 'kadence_blocks_activecampaign_api_base'
wp option delete 'kadence_blocks_recaptcha_language'
wp option delete 'kt_recaptcha'
wp option delete 'kadence_blocks_mailerlite_api'
wp option delete 'kadence_blocks_getresponse_api_key'
wp option delete 'kadence_blocks_getresponse_api_endpoint'
wp option delete 'kadence_blocks_recaptcha_site_key'
wp option delete 'kadence_blocks_google_maps_api'
wp option delete 'kt_blocks_editor_width'
wp option delete 'kadence_blocks_wire_subscribe'
wp option delete 'kadence_blocks_prophecy'
wp option delete 'kt_blocks_config_blocks'
wp option delete 'kadence_blocks_config_blocks'
wp option delete 'kadence_blocks_settings_blocks'
wp option delete 'kadence_blocks_colors'
wp option delete 'kadence_blocks_global'
wp option delete 'kadence_blocks_settings'
wp option delete 'kadence_blocks_cloud'
wp option delete 'kadence_blocks_font_settings'
wp option delete 'kb_design_library_prompts'
wp option delete 'downloaded_font_files'
wp option delete 'kadence_blocks_recaptcha_secret_key'
wp option delete 'widget_block'
wp option delete 'kadence_blocks_admin_bar_settings'
wp option delete 'kt_api_manager'
wp option delete 'kt_api_manager_kadence_gutenberg_pro_data'
wp option delete 'kadence_blocks_redirect_on_activation'
wp option delete 'kt_blocks_unregistered_blocks'
wp option delete 'kadence_blocks_turnstile_site_key'
wp option delete 'kadence_blocks_turnstile_secret_key'
wp option delete 'kadence_blocks_hcaptcha_site_key'
wp option delete 'kadence_blocks_hcaptcha_secret_key'
wp option delete 'kadence_blocks_header_notice_dismissed'
wp option delete 'kadence_blocks_convertkit_api'
wp option delete 'kadence_blocks_header_popover_tutorial_complete'
wp option delete 'kadenceblocks_data_settings'
wp option delete 'stellarwp_telemetry'
wp option delete 'stellarwp_telemetry_last_send'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timeout'"

# Clear Cron Jobs
wp cron event delete 'delete_block_library_folder'
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_form_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_form_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_form_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_form_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_post_transparent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_post_transparent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_post_transparent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_post_transparent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pexels_photographer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pexels_photographer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pexels_photographer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pexels_photographer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pexels_photographer_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pexels_photographer_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pexels_photographer_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pexels_photographer_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pexels_photograph_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pexels_photograph_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pexels_photograph_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pexels_photograph_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_category_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_category_hover_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_category_hover_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_category_hover_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_category_hover_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kadence_blocks_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kadence_blocks_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kadence_blocks_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kadence_blocks_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kt_blocks_editor_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kt_blocks_editor_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kt_blocks_editor_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kt_blocks_editor_width'"
