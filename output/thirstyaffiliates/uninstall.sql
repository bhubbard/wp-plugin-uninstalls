-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ta_authenticator_site_uuid', 'ta_authenticator_secret_token', 'ta_disable_ip_address_collection', 'ta_link_prefix', 'ta_link_prefix_custom', 'ta_disable_cat_auto_select', 'ta_disable_browser_device_collection', 'ta_stripe_customer_portal', 'ta_stripe_test_secret_key', 'ta_stripe_live_secret_key', 'ta_onboarding_steps_completed', 'ta_onboarding_features', 'ta_onboarding_link_id', 'ta_onboarding_has_imported_links', 'ta_onboarding_content_steps_skipped', 'ta_onboarding_category_id', 'thirstyaffiliates_installed_monsterinsights', 'ta_authenticator_user_uuid', 'ta_force_ugly_gateway_notify_urls', 'ta_stripe_connect_status', 'ta_stripe_status', 'ta_link_redirect_type', 'ta_uncloak_link_per_link', 'ta_show_cat_in_slug', 'ta_thirstypay_default_currency', 'ta_legacy_uploader', 'ta_additional_rel_tags', 'ta_additional_css_classes', 'ta_authenticator_account_email', 'ta_activation_code_triggered', 'ta_activation_time', 'ta_database_tables_created', 'ta_guided_tour_status', 'ta_disable_thirsty_link_class', 'ta_disable_title_attribute', 'ta_disable_visual_editor_buttons', 'ta_no_follow', 'ta_new_window', 'ta_review_prompt_delay', 'ta_review_prompt_removed', 'ta_enable_stats_reporting_module', 'ta_show_enable_js_redirect_notice', 'ta_enable_javascript_frontend_redirect', 'thirstyOptions', 'tap_amazon_associate_tags', 'tap_azon_import_images', 'tap_google_click_tracking_script', 'thirstyaff_hide_announcements', 'ta_onboarded', 'ta_onboarding_complete');
DELETE FROM wp_options WHERE option_name IN ('ta_browser_no_cache_301_redirect', 'ta_enable_bot_crawl_blocker_script', 'ta_enable_link_fixer', 'ta_used_link_prefixes', 'ta_disable_text_editor_buttons', 'ta_settings_initialized', 'ta_dismiss_marketing_notice_option', 'ta_dismiss_upgrade_header', 'ta_links_to_uncloak', 'ta_uncloak_link_per_category', 'ta_category_to_uncloak', 'ta_stats_trimer_set_point', 'ta_has_recurring_thirstypay_link', 'ta_thirstypay_thank_you_page_id', 'ta_a99_f33_9c7_version', 'ta_customer_portal_notice_dismissed', 'ta_dismiss_notice_ta_thirstypay_stripe', 'ta_old_site_url', 'ta_stripe_test_publishable_key', 'ta_stripe_live_publishable_key', 'ta_stripe_service_account_id', 'ta_stripe_service_account_name', 'tap_license_info', 'ta_flush_rewrite_rules', 'ta_review_prompt_delay', 'ta_dismiss_notice_continue_onboarding', '_monsterinsights_activation_redirect', 'ta_a99_f33_9c7', 'ta_dismiss_notice_fee_3', 'ta_stripe_customer_portal_error', 'caseproof_growth_tools_configuration_data_v2', 'ta_license_info');
DELETE FROM wp_options WHERE option_name LIKE '%-mosh-products';
DELETE FROM wp_options WHERE option_name LIKE '%-mosh-addons-update-check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ta_thirstypay_link', '_ta_category_slug_id', '_ta_category_slug', 'thirstyData');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ta_thirstypay_link', '_ta_category_slug_id', '_ta_category_slug', 'thirstyData');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ta_thirstypay_link', '_ta_category_slug_id', '_ta_category_slug', 'thirstyData');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ta_thirstypay_link', '_ta_category_slug_id', '_ta_category_slug', 'thirstyData');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%scanned_inserted';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%scanned_inserted';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%scanned_inserted';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%scanned_inserted';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%inserted_to';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%inserted_to';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%inserted_to';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%inserted_to';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%css_classes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%css_classes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%css_classes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%css_classes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%destination_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%destination_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%destination_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%destination_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%redirect_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%redirect_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%redirect_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%redirect_type';

