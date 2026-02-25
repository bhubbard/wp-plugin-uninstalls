#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_permalinks'
wp option delete 'ampforwp_plugin_info'
wp option delete 'ampforwp_rewrite_flush_option'
wp option delete 'ampforwp_theme_notice'
wp option delete 'AMPforwp_db_version'
wp option delete 'redux_builder_amp'
wp option delete 'ampforwp_exclude_post'
wp option delete 'wp_no_base_permalink'
wp option delete 'ampforwppro_license_info'
wp option delete 'ampforwp_option_panel_view_type'
wp option delete 'seopress_titles_option_name'
wp option delete 'heateor_sss_custom_url_shares'
wp option delete 'heateor_sss_homepage_shares'
wp option delete 'ampforwp_feedback_remove_notice'
wp option delete 'ampforwp_tpd_remove_notice'
wp option delete 'ampforwp_custom_post_types'
wp option delete 'ampforwp_structure_data_module_upgrade'
wp option delete 'sd_data'
wp option delete 'ampforwp_cpt_generated_post_types'
wp option delete '_ampforwp_get_post_percent'
wp option delete 'active_sitewide_plugins'
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'wpseo_titles'
wp option delete 'uaf_use_absolute_font_path'
wp option delete 'uaf_font_data'
wp option delete 'uaf_font_implement'
wp option delete 'seopress_social_option_name'
wp option delete 'seopress_advanced_option_name'
wp option delete 'wpseo_local'
wp option delete 'amp_ads_license_status'
wp option delete 'current_theme'
wp option delete 'amp_customizer'
wp option delete 'embed_autourls'
wp option delete 'ampforwp_installer_completed'
wp option delete 'ninja_forms_load_deprecated'
wp option delete 'ampforwp_design'
wp option delete 'ampforwp_default_pages_to'
wp option delete 'fv_gravatar_cache'
wp option delete 'ampforwp_ia_exclude_post'
wp option delete 'spai_settings_api_url'
wp option delete 'spai_settings_compress_level'
wp option delete 'classic-editor-replace'
wp option delete 'youtubeprefs_alloptions'
wp option delete 'imagify_settings'
wp option delete 'wp_rocket_settings'
wp option delete 'i2_pros_and_cons'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'ampforwp_dismiss_discount_btn'

# Delete Transients
wp transient delete 'ampforwp_category_base'
wp transient delete 'ampforwp_permalink_structure'
wp transient delete 'ampforwp_tag_base'
wp transient delete 'ampforwp_woocommerce_permalinks'
wp transient delete 'ampforwp_welcome_screen_activation_redirect'
wp transient delete 'ampforwp_current_version_check'
wp transient delete 'ampforwp_automattic_activation_notice'
wp transient delete 'ampforwp-pm-disabler'
wp transient delete 'ampforwp_exclude_post_transient'
wp transient delete 'replaced_redux_comments_updated'
wp transient delete 'ampforwp_header_menu'
wp transient delete 'ampforwp_footer_menu'
wp transient delete 'ampforwp_sd_menu'
wp transient delete 'ampforwp_header_sd_menu'
wp transient delete 'ampforwp_footer_sd_menu'
wp transient delete 'ampforwp_addon_set_transient'
wp transient delete 'ampforwp_get_taxonomies'
wp transient delete 'ampforwp_themeframework_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp transient delete 'redux-extensions-fetch'
wp transient delete 'ampforwp_auto_add_amp_in_menu_link'
wp transient delete 'ampforwp_sassy_css'
wp transient delete 'ampforwp_gutenberg_styles'
wp transient delete 'ampforwp_amp_exclude_custom_element'
wp transient delete 'ampforwp_amp_included_custom_element'
wp transient delete 'ampforwp_super_related_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp_filtered_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp_filtered_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp_filtered_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp_filtered_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp_custom_content_editor_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp_custom_content_editor_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp_custom_content_editor_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp_custom_content_editor_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp_page_builder_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp_page_builder_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp_page_builder_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp_page_builder_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wi_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wi_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wi_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wi_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_featured_image_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_featured_image_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_featured_image_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_featured_image_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qode_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qode_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qode_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qode_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_sss_shares_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp_hide_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp_hide_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp_hide_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp_hide_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp-amp-on-off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp-amp-on-off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp-amp-on-off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp-amp-on-off'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp-post-metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp-post-metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp-post-metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp-post-metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_video_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_video_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_video_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_video_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp3dimages_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp3dimages_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp3dimages_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp3dimages_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tdc_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tdc_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tdc_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tdc_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_page_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_page_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_page_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_page_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diable_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diable_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diable_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diable_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_page_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_page_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_page_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_page_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp_custom_content_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp_custom_content_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp_custom_content_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp_custom_content_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_ampforwp_page_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_ampforwp_page_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_ampforwp_page_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_ampforwp_page_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp-page-builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp-page-builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp-page-builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp-page-builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp_custom_sidebar_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp_custom_sidebar_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp_custom_sidebar_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp_custom_sidebar_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp-redirection-on-off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp-redirection-on-off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp-redirection-on-off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp-redirection-on-off'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp-ia-on-off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp-ia-on-off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp-ia-on-off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp-ia-on-off'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doctitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doctitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doctitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doctitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qode_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qode_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qode_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qode_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ampforwp-wpautop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ampforwp-wpautop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ampforwp-wpautop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ampforwp-wpautop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_dimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_dimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_dimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_dimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_audio_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_audio_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_audio_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_audio_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_video_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_video_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_video_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_video_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_subtitle'"
