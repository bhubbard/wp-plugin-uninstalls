#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ce4wp_referred_by'
wp option delete 'site_intent'
wp option delete 'jetpack_dismissed_notices'
wp option delete 'wpcom_newsletter_categories'
wp option delete 'site_created_date'
wp option delete 'mm_coming_soon'
wp option delete 'underConstructionActivationStatus'
wp option delete 'ucp_options'
wp option delete 'uuc_settings'
wp option delete 'seed_csp4_settings_content'
wp option delete 'jetpack_protect_key'
wp option delete 'verification_services_codes'
wp option delete 'jetpack_wga'
wp option delete 'wordpress_api_key'
wp option delete 'stats_options'
wp option delete 'subscription_options'
wp option delete 'jpo_business_address'
wp option delete 'sidebars_widgets'
wp option delete 'jetpack_protect_blocked_attempts'
wp option delete 'akismet_spam_count'
wp option delete 'gravatar_disable_hovercards'
wp option delete 'wpcom_publish_posts_with_markdown'
wp option delete 'widget_milestone_widget'
wp option delete 'jetpack_mailchimp'
wp option delete 'wpcom_newsletter_categories_enabled'
wp option delete 'trusted_ip_header'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'auto_update_plugins'
wp option delete 'auto_updater.lock'
wp option delete 'jetpack_protect_whitelist'
wp option delete 'jetpack_sync_settings_disable'
wp option delete 'jetpack_excluded_extensions'
wp option delete 'jetpack_active_plan'
wp option delete 'wp_mobile_custom_css'
wp option delete 'wp_mobile_excerpt'
wp option delete 'wp_mobile_featured_images'
wp option delete 'wp_mobile_app_promos'
wp option delete 'jetpack_restapi_stats_cache'
wp option delete 'registration'
wp option delete 'add_new_users'
wp option delete 'upload_space_check_disabled'
wp option delete 'upload_filetypes'
wp option delete 'fileupload_maxk'
wp option delete 'menu_items'
wp option delete 'jetpack_offline_mode'
wp option delete 'jetpack_protect_active'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_blocks_disabled'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_log'
wp option delete 'jetpack_unique_connection'
wp option delete 'video_upload_filetypes'
wp option delete 'Blogroll Recommendations'
wp option delete 'cookie_consent_template'
wp option delete 'jetpack_sharing_buttons_auto_add'
wp option delete 'jetpack_subscriptions_login_navigation_enabled'
wp option delete 'jetpack_subscriptions_subscribe_navigation_enabled'
wp option delete 'jetpack_subscriptions_subscribe_post_end_enabled'
wp option delete 'carousel_enable_it'
wp option delete 'activitypub_use_opengraph'
wp option delete 'jetpack_backup_db_version'
wp option delete 'wpcom_admin_interface'
wp option delete 'featured-content'
wp option delete 'jetpack_content_featured_images_post'
wp option delete 'jetpack_content_featured_images_page'
wp option delete 'jetpack_content_author_bio'
wp option delete 'jetpack_content_blog_display'
wp option delete 'jetpack_content_featured_images_archive'
wp option delete 'jetpack_content_featured_images_portfolio'
wp option delete 'jetpack_content_featured_images_fallback'
wp option delete 'nova_menu_order'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'jetpack_feedback_unread_count'
wp option delete 'akismet_strictness'
wp option delete 'jetpack_forms_secret_key'
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp option delete 'wpcom_is_staging_site'
wp option delete 'jb_get_started'
wp option delete 'twitter_via'
wp option delete 'jetpack-twitter-cards-site-tag'
wp option delete 'jetpack_social_settings'
wp option delete 'jetpack_social_autoconvert_images'
wp option delete 'jetpack_social_image_generator_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excluded_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_theme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%inf_scroll'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%filtering_opens_overlay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_post_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_product_price'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_sort'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%highlight_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%overlay_trigger'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%result_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_powered_by'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_sort'"
wp option delete 'instant_search_enabled'
wp option delete 'has_jetpack_search_product'
wp option delete 'widget_block'
wp option delete 'widget_jetpack-search-filters'
wp option delete 'complianz_options_integrations'
wp option delete 'wpcom_public_coming_soon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full-sync-enqueue'"
wp option delete 'jetpack_plugin_api_action_links'
wp option delete 'jetpack_site_icon_url'
wp option delete 'jetpack_sync_non_blocking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_constant_%'"
wp option delete 'jetpack_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_network_%'"
wp option delete 'jetpack_full_sync_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%immediate-send'"
wp option delete 'videopress_private_enabled_for_site'
wp option delete 'jetpack_protect_global_whitelist'
wp option delete 'jetpack_protect_activating'
wp option delete 'jetpack_dismissed_protect_multisite_banner'
wp option delete 'bruteprotect_api_key'
wp option delete 'jetpack_protect_error'
wp option delete 'jetpack_protect_global_stats_timestamp'
wp option delete 'jetpack_protect_global_stats'
wp option delete 'woocommerce_enable_delayed_account_creation'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_store_id'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_analytics_proxy_speed_module_version'
wp option delete 'widget_nav_menu'
wp option delete 'disabled_likes'
wp option delete 'jetpack_api_cache_enabled'
wp option delete 'wpcom_data_sharing_opt_out'
wp option delete 'social_notifications_like'
wp option delete 'social_notifications_reblog'
wp option delete 'social_notifications_subscribe'
wp option delete 'comment_previously_approved'
wp option delete 'disallowed_keys'
wp option delete 'lang_id'
wp option delete 'site_vertical_id'
wp option delete 'jetpack_cloudflare_analytics'
wp option delete 'disabled_reblogs'
wp option delete 'jetpack_comment_likes_enabled'
wp option delete 'woocommerce_onboarding_profile'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'jetpack_testimonial'
wp option delete 'jetpack_testimonial_posts_per_page'
wp option delete 'jetpack_portfolio'
wp option delete 'jetpack_portfolio_posts_per_page'
wp option delete 'launchpad_screen'
wp option delete 'wpcom_featured_image_in_email'
wp option delete 'jetpack_gravatar_in_email'
wp option delete 'jetpack_author_in_email'
wp option delete 'jetpack_post_date_in_email'
wp option delete 'sm_enabled'
wp option delete 'jetpack_subscribe_overlay_enabled'
wp option delete 'jetpack_subscribe_floating_button_enabled'
wp option delete 'wpcom_gifting_subscription'
wp option delete 'wpcom_reader_views_enabled'
wp option delete 'wpcom_subscription_emails_use_excerpt'
wp option delete 'jetpack_subscriptions_from_name'
wp option delete 'jetpack_verbum_subscription_modal'
wp option delete 'enable_verbum_commenting'
wp option delete 'enable_blocks_comments'
wp option delete 'jetpack_comment_form_color_scheme'
wp option delete 'in_site_migration_flow'
wp option delete 'migration_source_site_domain'
wp option delete 'jetpack_waf_automatic_rules'
wp option delete 'jetpack_waf_ip_allow_list'
wp option delete 'jetpack_waf_ip_allow_list_enabled'
wp option delete 'jetpack_waf_ip_block_list'
wp option delete 'jetpack_waf_ip_block_list_enabled'
wp option delete 'jetpack_waf_share_data'
wp option delete 'jetpack_waf_share_debug_data'
wp option delete 'jetpack_waf_automatic_rules_last_updated_timestamp'
wp option delete 'is_fully_managed_agency_site'
wp option delete 'wpcom_hide_action_bar'
wp option delete 'infinite_scroll'
wp option delete 'mcp_abilities'
wp option delete 'jetpack_subscriptions_reply_to'
wp option delete 'highlander_comment_form_prompt'
wp option delete 'site_logo'
wp option delete 'woocommerce_helper_data'
wp option delete 'carousel_background_color'
wp option delete 'carousel_display_exif'
wp option delete 'carousel_display_comments'
wp option delete 'stb_enabled'
wp option delete 'stc_enabled'
wp option delete 'sharing-options'
wp option delete 'monitor_receive_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'post_by_email_address%'"
wp option delete 'jetpack_publicize_options'
wp option delete 'jetpack_relatedposts'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'sharedaddy_disable_resources'
wp option delete 'sharing-services'
wp option delete 'text_direction'
wp option delete 'polldaddy_load_poll_inline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'soundcloud_%'"
wp option delete 'embed_size_w'
wp option delete 'jetpack_sitemap_post_types'
wp option delete 'jetpack-sitemap-state'
wp option delete 'jetpack_sitemap_location'
wp option delete 'stats_dashboard_widget'
wp option delete 'stats_cache'
wp option delete 'tiled_galleries'
wp option delete 'video_player_high_quality'
wp option delete 'wordads_ccpa_enabled'
wp option delete 'wordads_approved'
wp option delete 'wordads_active'
wp option delete 'wordads_house'
wp option delete 'wordads_unsafe'
wp option delete 'wordads_ccpa_privacy_policy_url'
wp option delete 'wordads_custom_adstxt'
wp option delete 'headstart'
wp option delete 'options'
wp option delete 'site_goals'
wp option delete 'site_creation_flow'
wp option delete 'site_source_slug'
wp option delete 'selected_features'
wp option delete 'was_created_with_blank_canvas_design'
wp option delete 'anchor_podcast'
wp option delete 'site_partner_bundle'
wp option delete 'onboarding_segment'
wp option delete 'launchpad_checklist_tasks_statuses'
wp option delete 'wpcom_site_setup'
wp option delete '_jetpack_site_is_commercial'
wp option delete '_jetpack_site_is_commercial_reason'
wp option delete 'wpcom_classic_early_release'
wp option delete 'jetpack_was_activated'
wp option delete 'jetpack_auto_installed'
wp option delete 'jetpack_register'

# Delete Transients
wp transient delete 'jetpack_a8c_data'
wp transient delete 'jetpack_rewind_state'
wp transient delete 'jetpack_scan_state'
wp transient delete 'wpcom_subscribers_total'
wp transient delete 'wpcom_subscribers_total_no_publicize'
wp transient delete 'wpcom_subscribers_totals'
wp transient delete 'update_plugins'
wp transient delete 'jetpack_news_sitemap_xml'
wp transient delete 'jetpack-sitemap-state-lock'
wp transient delete 'jetpack_other_linked_admins'
wp transient delete 'jetpack_is_single_user'
wp transient delete 'update_core'
wp transient delete 'update_themes'
wp transient delete 'activated_jetpack'
wp transient delete 'jetpack_site_user_count'
wp transient delete 'jetpack_https_test_message'
wp transient delete 'jetpack_https_test'
wp transient delete 'jetpack_akismet_key_is_valid'
wp transient delete 'jetpack_rewind_enabled'
wp transient delete 'my_jetpack_product_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_protect_recovery_key_validated_%' OR option_name LIKE '_site_transient_jetpack_protect_recovery_key_validated_%'"
wp transient delete 'featured_content_ids'
wp transient delete 'jetpack-portfolio-count-cache'
wp transient delete 'jetpack-testimonial-count-cache'
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_validation_lock'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_last_plugin_sync'
wp transient delete 'my_jetpack_write_access'
wp transient delete 'jetpack_partner_data'
wp transient delete 'jetpack_plugin_api_action_links_refresh'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_update_%' OR option_name LIKE '_site_transient_update_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_videopress_%' OR option_name LIKE '_site_transient_jetpack_videopress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_waf_recovery_%' OR option_name LIKE '_site_transient_jetpack_waf_recovery_%'"
wp transient delete 'wc_analytics_blog_details'
wp transient delete 'doing_cron'
wp transient delete 'monitor_last_downtime'
wp transient delete 'jetpack_plugin_data'
wp transient delete 'wordads_ads_txt'
wp transient delete 'jetpack_register'

# Clear Cron Jobs
wp cron event delete 'jetpack_backup_cleanup_helper_scripts'
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'
wp cron event delete 'grunion_scheduled_delete'
wp cron event delete 'grunion_scheduled_delete_temp'
wp cron event delete 'jetpack_sync_cron'
wp cron event delete 'jetpack_sync_full_cron'
wp cron event delete 'jetpack_sync_send_db_checksum'
wp cron event delete 'jp_purge_transients_cron'
wp cron event delete 'jetpack_waf_rules_update_cron'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'jp_sitemap_cron_hook'
wp cron event delete 'wordads_cron_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_blogging_prompt_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_blogging_prompt_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_blogging_prompt_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_blogging_prompt_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogging_prompts_attribution'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogging_prompts_attribution'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogging_prompts_attribution'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogging_prompts_attribution'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_post_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_post_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_post_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_post_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_post_author_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_post_author_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_post_author_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_post_author_external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vertical_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vertical_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vertical_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vertical_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_memberships_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_memberships_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_memberships_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_memberships_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publicize_facebook_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publicize_facebook_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publicize_facebook_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publicize_facebook_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spam_status_changed_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spam_status_changed_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spam_status_changed_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spam_status_changed_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_forms_webhook_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_forms_webhook_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_forms_webhook_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_forms_webhook_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_forms_webhook_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_forms_webhook_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_forms_webhook_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_forms_webhook_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videopress_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videopress_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videopress_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videopress_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videopress_poster_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videopress_poster_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videopress_poster_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videopress_poster_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videopress_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videopress_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videopress_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videopress_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videopress_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videopress_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videopress_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videopress_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videopress_privacy_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videopress_privacy_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videopress_privacy_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videopress_privacy_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'switch_like_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'switch_like_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'switch_like_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'switch_like_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rest_api_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rest_api_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rest_api_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rest_api_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rest_api_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rest_api_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rest_api_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rest_api_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hc_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hc_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hc_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hc_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_newsletter_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_newsletter_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_newsletter_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_newsletter_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footnotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_dont_email_post_to_subs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_dont_email_post_to_subs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_dont_email_post_to_subs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_dont_email_post_to_subs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_post_was_ever_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_post_was_ever_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_post_was_ever_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_post_was_ever_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jetpack_amp_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jetpack_amp_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jetpack_amp_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jetpack_amp_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog_visibility'"
