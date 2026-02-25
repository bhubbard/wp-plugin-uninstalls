#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lp_accept_terms'
wp option delete '_lp_pro_active'
wp option delete '_lp_pro_installed'
wp option delete 'lp_general'
wp option delete 'wc_am_client_wplegalpages_pro_activated'
wp option delete 'lp_footer_options'
wp option delete 'lp_banner_options'
wp option delete 'lp_eu_button_text'
wp option delete 'lp_eu_link_text'
wp option delete 'lp_eu_link_url'
wp option delete 'lp_eu_theme_css'
wp option delete 'lp_eu_box_color'
wp option delete 'lp_eu_text_color'
wp option delete 'lp_eu_button_color'
wp option delete 'lp_eu_button_text_color'
wp option delete 'lp_eu_link_color'
wp option delete 'lp_eu_text_size'
wp option delete 'wplegalpages_is_block_enabled'
wp option delete 'wplegalpages_pro_version'
wp option delete '_lp_require_for'
wp option delete '_lp_always_verify'
wp option delete '_lp_minimum_age'
wp option delete '_lp_display_option'
wp option delete '_lp_redirect_url'
wp option delete 'lp_eu_button_text_no'
wp option delete 'policy_preview'
wp option delete 'wplegalpages_api_secret'
wp option delete 'app_wplp_subscription_status_pending_cancel'
wp option delete 'wpeka_api_framework_app_settings'
wp option delete 'wplegal_api_framework_app_settings'
wp option delete 'wplp_review_pending'
wp option delete 'wplegalpages_free_version'
wp option delete '_lp_templates_updated'
wp option delete '_lp_effective_date_templates_updated'
wp option delete '_lp_db_updated'
wp option delete '_lp_terms_updated'
wp option delete '_lp_terms_fr_de_updated'
wp option delete 'lp_eu_cookie_enable'
wp option delete 'lp_eu_cookie_title'
wp option delete 'lp_eu_cookie_message'
wp option delete 'wplegalpages-ask-for-usage-optin'
wp option delete 'wplegalpages_disable_settings_warning'
wp option delete 'wplegalpages-ask-for-usage-dismissed'
wp option delete 'lp_popup_enabled'
wp option delete '_lp_age_popup_no'
wp option delete '_lp_description'
wp option delete '_lp_invalid_description'
wp option delete 'updateAt'
wp option delete 'banner_cookie_options'
wp option delete 'wplegal_last_selected_page'
wp option delete 'wplegal_terms_of_use_page'
wp option delete 'wplegal_terms_of_use_free_page'
wp option delete 'wplegal_fb_policy_page'
wp option delete 'wplegal_affiliate_agreement_page'
wp option delete 'wplegal_standard_privacy_policy_page'
wp option delete 'wplegal_california_privacy_policy_page'
wp option delete 'wplegal_returns_refunds_policy_page'
wp option delete 'wplegal_impressum_page'
wp option delete 'wplegal_end_user_license_page'
wp option delete 'wplegal_digital_goods_refund_policy_page'
wp option delete 'wplegal_privacy_policy_page'
wp option delete 'wplegal_dmca_page'
wp option delete 'wplegal_cookies_policy_page'
wp option delete 'wplegal_general_disclaimer_page'
wp option delete 'wplegal_earnings_disclaimer_page'
wp option delete 'wplegal_coppa_policy_page'
wp option delete 'wplegal_custom_legal_page'
wp option delete 'wplegal_affiliate_disclosure_page'
wp option delete 'wplegal_amazon_affiliate_disclosure_page'
wp option delete 'wplegal_testimonials_disclosure_page'
wp option delete 'wplegal_advertising_disclosure_page'
wp option delete 'wplegal_antispam_page'
wp option delete 'wplegal_ftc_statement_page'
wp option delete 'wplegal_double_dart_page'
wp option delete 'wplegal_about_us_page'
wp option delete 'wplegal_cpra_page'
wp option delete 'wplegal_confidentiality_disclosure_page'
wp option delete 'wplegal_medical_disclaimer_page'
wp option delete 'wplegal_newsletters_page'
wp option delete 'wplegal_ccpa_free_page'
wp option delete 'wplegal_terms_forced_policy_page'
wp option delete 'wplegal_gdpr_cookie_policy_page'
wp option delete 'wplegal_gdpr_privacy_policy_page'
wp option delete 'wplegal_blog_comments_policy_page'
wp option delete 'wplegal_linking_policy_page'
wp option delete 'wplegal_external_link_policy_page'
wp option delete 'wplp_template_notice_dismissed'
wp option delete 'wpgattack_general'
wp option delete 'wplegalpalges_create_popup'
wp option delete 'wplegalpalges_flag_key'
wp option delete 'gdpr_api_framework_app_settings'
wp option delete 'lp_excludePage'
wp option delete 'lp_connected'
wp option delete '_lp_membership'
wp option delete '_lp_input_type'
wp option delete '_lp_cookie_duration'
wp option delete 'wc_am_client_gdpr_cookie_consent_instance'
wp option delete 'analytics_activation_redirect_wplegalpages'
wp option delete 'redirect_after_activation_option_lp'

# Delete Transients
wp transient delete 'app_wplp_subscription_payment_status_failed'
wp transient delete 'wplp_review_transient'
wp transient delete 'wplegal_available_languages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_legal_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_legal_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_legal_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_legal_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_legal_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_legal_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_legal_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_legal_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_legal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_legal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_legal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_legal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_clauses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_clauses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_clauses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_clauses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_clauses_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_clauses_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_clauses_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_clauses_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_terms_of_use_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_terms_of_use_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_terms_of_use_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_terms_of_use_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_terms_of_use_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_terms_of_use_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_terms_of_use_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_terms_of_use_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_fb_policy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_fb_policy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_fb_policy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_fb_policy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_fb_policy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_fb_policy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_fb_policy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_fb_policy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_affiliate_agreement_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_affiliate_agreement_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_affiliate_agreement_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_affiliate_agreement_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_affiliate_agreement_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_affiliate_agreement_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_affiliate_agreement_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_affiliate_agreement_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_standard_privacy_policy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_standard_privacy_policy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_standard_privacy_policy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_standard_privacy_policy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_standard_privacy_policy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_standard_privacy_policy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_standard_privacy_policy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_standard_privacy_policy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_ccpa_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_ccpa_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_ccpa_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_ccpa_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_ccpa_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_ccpa_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_ccpa_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_ccpa_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_returns_refunds_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_returns_refunds_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_returns_refunds_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_returns_refunds_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_returns_refunds_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_returns_refunds_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_returns_refunds_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_returns_refunds_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_impressum_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_impressum_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_impressum_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_impressum_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_impressum_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_impressum_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_impressum_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_impressum_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_end_user_license_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_end_user_license_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_end_user_license_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_end_user_license_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_end_user_license_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_end_user_license_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_end_user_license_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_end_user_license_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_digital_goods_refund_policy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_privacy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_privacy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_privacy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_privacy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_privacy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_privacy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_privacy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_privacy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_dmca_policy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_dmca_policy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_dmca_policy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_dmca_policy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_dmca_policy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_dmca_policy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_dmca_policy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_dmca_policy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_cookies_policy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_cookies_policy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_cookies_policy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_cookies_policy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_cookies_policy_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_cookies_policy_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_cookies_policy_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_cookies_policy_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_general_disclaimer_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_general_disclaimer_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_general_disclaimer_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_general_disclaimer_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_general_disclaimer_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_general_disclaimer_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_general_disclaimer_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_general_disclaimer_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_earnings_disclaimer_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_earnings_disclaimer_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_earnings_disclaimer_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_earnings_disclaimer_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_earnings_disclaimer_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_earnings_disclaimer_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_earnings_disclaimer_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_earnings_disclaimer_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_coppa_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_coppa_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_coppa_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_coppa_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_coppa_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_coppa_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_coppa_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_coppa_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_custom_legal_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_custom_legal_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_custom_legal_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_custom_legal_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'legal_page_custom_legal_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'legal_page_custom_legal_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'legal_page_custom_legal_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'legal_page_custom_legal_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gdpr_policies_links_editor'"
