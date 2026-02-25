#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otter_blocks_logger_flag'
wp option delete 'themeisle_blocks_settings_blocks_animation'
wp option delete 'themeisle_blocks_settings_optimize_animations_css'
wp option delete 'otter_animation_dismiss_welcome_notice'
wp option delete 'otter_animation_welcome_notice_display_time'
wp option delete 'themeisle_blocks_settings_css_module'
wp option delete 'themeisle_blocks_db_version'
wp option delete 'otter_reference_key'
wp option delete 'otter_blocks_install'
wp option delete 'themeisle_blocks_settings_notifications'
wp option delete 'themeisle_blocks_settings_global_defaults'
wp option delete 'themeisle_blocks_settings_review_scale'
wp option delete 'themeisle_blocks_settings_block_ai_toolbar_module'
wp option delete 'themeisle_blocks_settings_block_conditions'
wp option delete 'themeisle_blocks_settings_patterns_library'
wp option delete 'themeisle_blocks_settings_dynamic_content'
wp option delete 'themeisle_blocks_settings_highlight_dynamic'
wp option delete 'themeisle_open_ai_api_key'
wp option delete 'themeisle_blocks_settings_onboarding'
wp option delete 'themeisle_sdk_promotions_otter_installed'
wp option delete 'themeisle_google_captcha_api_site_key'
wp option delete 'themeisle_google_map_block_api_key'
wp option delete 'widget_block'
wp option delete 'themeisle_blocks_widgets_fonts'
wp option delete 'themeisle_blocks_widgets_css'
wp option delete 'sidebars_widgets'
wp option delete 'themeisle_blocks_widgets_css_file'
wp option delete 'themeisle_blocks_form_emails'
wp option delete 'themeisle_blocks_settings_redirect'
wp option delete 'themeisle_blocks_settings_onboarding_wizard'
wp option delete 'themeisle_blocks_settings_disable_review_schema'
wp option delete 'otter_blocks_logger_data'
wp option delete 'themeisle_stripe_api_key'
wp option delete 'themeisle_google_captcha_api_secret_key'
wp option delete 'themeisle_blocks_settings_default_block'
wp option delete 'themeisle_blocks_form_fields_option'
wp option delete 'themeisle_webhooks_options'
wp option delete 'themeisle_otter_ai_usage'
wp option delete 'themeisle_disabled_blocks'
wp option delete 'themeisle_blocks_settings_prompt_actions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete 'otter_animations_parsed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'otter_montly_scheduled_events'
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themeisle_gutenberg_block_stylesheet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themeisle_gutenberg_block_stylesheet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themeisle_gutenberg_block_stylesheet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themeisle_gutenberg_block_stylesheet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themeisle_gutenberg_block_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themeisle_gutenberg_block_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themeisle_gutenberg_block_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themeisle_gutenberg_block_fonts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themeisle_gutenberg_block_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themeisle_gutenberg_block_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themeisle_gutenberg_block_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themeisle_gutenberg_block_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themeisle_gutenberg_block_has_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themeisle_gutenberg_block_has_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themeisle_gutenberg_block_has_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themeisle_gutenberg_block_has_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otter_form_record_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otter_form_record_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otter_form_record_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otter_form_record_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'o_stripe_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'o_stripe_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'o_stripe_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'o_stripe_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
