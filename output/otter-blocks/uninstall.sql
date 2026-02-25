-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otter_blocks_logger_flag', 'themeisle_blocks_settings_blocks_animation', 'themeisle_blocks_settings_optimize_animations_css', 'otter_animation_dismiss_welcome_notice', 'otter_animation_welcome_notice_display_time', 'themeisle_blocks_settings_css_module', 'themeisle_blocks_db_version', 'otter_reference_key', 'otter_blocks_install', 'themeisle_blocks_settings_notifications', 'themeisle_blocks_settings_global_defaults', 'themeisle_blocks_settings_review_scale', 'themeisle_blocks_settings_block_ai_toolbar_module', 'themeisle_blocks_settings_block_conditions', 'themeisle_blocks_settings_patterns_library', 'themeisle_blocks_settings_dynamic_content', 'themeisle_blocks_settings_highlight_dynamic', 'themeisle_open_ai_api_key', 'themeisle_blocks_settings_onboarding', 'themeisle_sdk_promotions_otter_installed', 'themeisle_google_captcha_api_site_key', 'themeisle_google_map_block_api_key', 'widget_block', 'themeisle_blocks_widgets_fonts', 'themeisle_blocks_widgets_css', 'sidebars_widgets', 'themeisle_blocks_widgets_css_file', 'themeisle_blocks_form_emails', 'themeisle_blocks_settings_redirect', 'themeisle_blocks_settings_onboarding_wizard', 'themeisle_blocks_settings_disable_review_schema', 'otter_blocks_logger_data', 'themeisle_stripe_api_key', 'themeisle_google_captcha_api_secret_key', 'themeisle_blocks_settings_default_block', 'themeisle_blocks_form_fields_option', 'themeisle_webhooks_options', 'themeisle_otter_ai_usage', 'themeisle_disabled_blocks', 'themeisle_blocks_settings_prompt_actions', 'themeisle_sdk_notifications', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'downloaded_font_files', 'otter_animations_parsed');
DELETE FROM wp_options WHERE option_name IN ('themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_themeisle_gutenberg_block_stylesheet', '_themeisle_gutenberg_block_fonts', '_themeisle_gutenberg_block_styles', '_themeisle_gutenberg_block_has_review', 'otter_form_record_meta', 'o_stripe_data', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_themeisle_gutenberg_block_stylesheet', '_themeisle_gutenberg_block_fonts', '_themeisle_gutenberg_block_styles', '_themeisle_gutenberg_block_has_review', 'otter_form_record_meta', 'o_stripe_data', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_themeisle_gutenberg_block_stylesheet', '_themeisle_gutenberg_block_fonts', '_themeisle_gutenberg_block_styles', '_themeisle_gutenberg_block_has_review', 'otter_form_record_meta', 'o_stripe_data', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_themeisle_gutenberg_block_stylesheet', '_themeisle_gutenberg_block_fonts', '_themeisle_gutenberg_block_styles', '_themeisle_gutenberg_block_has_review', 'otter_form_record_meta', 'o_stripe_data', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');

