#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ta_authenticator_site_uuid'
wp option delete 'ta_authenticator_secret_token'
wp option delete 'ta_disable_ip_address_collection'
wp option delete 'ta_link_prefix'
wp option delete 'ta_link_prefix_custom'
wp option delete 'ta_disable_cat_auto_select'
wp option delete 'ta_disable_browser_device_collection'
wp option delete 'ta_stripe_customer_portal'
wp option delete 'ta_stripe_test_secret_key'
wp option delete 'ta_stripe_live_secret_key'
wp option delete 'ta_onboarding_steps_completed'
wp option delete 'ta_onboarding_features'
wp option delete 'ta_onboarding_link_id'
wp option delete 'ta_onboarding_has_imported_links'
wp option delete 'ta_onboarding_content_steps_skipped'
wp option delete 'ta_onboarding_category_id'
wp option delete 'thirstyaffiliates_installed_monsterinsights'
wp option delete 'ta_authenticator_user_uuid'
wp option delete 'ta_force_ugly_gateway_notify_urls'
wp option delete 'ta_stripe_connect_status'
wp option delete 'ta_stripe_status'
wp option delete 'ta_link_redirect_type'
wp option delete 'ta_uncloak_link_per_link'
wp option delete 'ta_show_cat_in_slug'
wp option delete 'ta_thirstypay_default_currency'
wp option delete 'ta_legacy_uploader'
wp option delete 'ta_additional_rel_tags'
wp option delete 'ta_additional_css_classes'
wp option delete 'ta_authenticator_account_email'
wp option delete 'ta_activation_code_triggered'
wp option delete 'ta_activation_time'
wp option delete 'ta_database_tables_created'
wp option delete 'ta_guided_tour_status'
wp option delete 'ta_disable_thirsty_link_class'
wp option delete 'ta_disable_title_attribute'
wp option delete 'ta_disable_visual_editor_buttons'
wp option delete 'ta_no_follow'
wp option delete 'ta_new_window'
wp option delete 'ta_review_prompt_delay'
wp option delete 'ta_review_prompt_removed'
wp option delete 'ta_enable_stats_reporting_module'
wp option delete 'ta_show_enable_js_redirect_notice'
wp option delete 'ta_enable_javascript_frontend_redirect'
wp option delete 'thirstyOptions'
wp option delete 'tap_amazon_associate_tags'
wp option delete 'tap_azon_import_images'
wp option delete 'tap_google_click_tracking_script'
wp option delete 'thirstyaff_hide_announcements'
wp option delete 'ta_onboarded'
wp option delete 'ta_onboarding_complete'
wp option delete 'ta_browser_no_cache_301_redirect'
wp option delete 'ta_enable_bot_crawl_blocker_script'
wp option delete 'ta_enable_link_fixer'
wp option delete 'ta_used_link_prefixes'
wp option delete 'ta_disable_text_editor_buttons'
wp option delete 'ta_settings_initialized'
wp option delete 'ta_dismiss_marketing_notice_option'
wp option delete 'ta_dismiss_upgrade_header'
wp option delete 'ta_links_to_uncloak'
wp option delete 'ta_uncloak_link_per_category'
wp option delete 'ta_category_to_uncloak'
wp option delete 'ta_stats_trimer_set_point'
wp option delete 'ta_has_recurring_thirstypay_link'
wp option delete 'ta_thirstypay_thank_you_page_id'
wp option delete 'ta_a99_f33_9c7_version'
wp option delete 'ta_customer_portal_notice_dismissed'
wp option delete 'ta_dismiss_notice_ta_thirstypay_stripe'
wp option delete 'ta_old_site_url'
wp option delete 'ta_stripe_test_publishable_key'
wp option delete 'ta_stripe_live_publishable_key'
wp option delete 'ta_stripe_service_account_id'
wp option delete 'ta_stripe_service_account_name'

# Delete Transients
wp transient delete 'tap_license_info'
wp transient delete 'ta_flush_rewrite_rules'
wp transient delete 'ta_review_prompt_delay'
wp transient delete 'ta_dismiss_notice_continue_onboarding'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'ta_a99_f33_9c7'
wp transient delete 'ta_dismiss_notice_fee_3'
wp transient delete 'ta_stripe_customer_portal_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-mosh-products' OR option_name LIKE '_site_transient_%-mosh-products'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-mosh-addons-update-check' OR option_name LIKE '_site_transient_%-mosh-addons-update-check'"
wp transient delete 'caseproof_growth_tools_configuration_data_v2'
wp transient delete 'ta_license_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_thirstypay_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_thirstypay_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_thirstypay_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_thirstypay_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%scanned_inserted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%scanned_inserted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%scanned_inserted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%scanned_inserted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%inserted_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%inserted_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%inserted_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%inserted_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%css_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%css_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%css_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%css_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thirstyData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thirstyData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thirstyData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thirstyData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%destination_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%redirect_type'"
