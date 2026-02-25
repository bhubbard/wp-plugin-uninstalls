#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wcaf_payment_commission_age'
wp option delete 'yith_wcaf_payment_pay_only_old_commissions'
wp option delete 'yith_wcaf_payment_type'
wp option delete 'yith_wcaf_payment_date'
wp option delete 'yith_wcaf_payment_threshold'
wp option delete 'yith_wcaf_enable_ban_hidden_sections'
wp option delete 'yith_wcaf_ban_hidden_sections'
wp option delete 'yith_wcaf_dashboard_location'
wp option delete 'yith_wcaf_enable_global_ban_message'
wp option delete 'yith_wcaf_ban_global_message'
wp option delete 'yith_wcaf_enable_global_reject_message'
wp option delete 'yith_wcaf_ban_reject_global_message'
wp option delete 'yith_wcaf_referral_registration_auto_enable'
wp option delete 'yith_wcaf_referral_registration_use_wc_form'
wp option delete 'yith_wcaf_affiliate_profile_fields'
wp option delete 'yith_wcaf_commission_avoid_auto_referral'
wp option delete 'yith_wcaf_click_enabled'
wp option delete 'yith_wcaf_click_resolution'
wp option delete '_yith_wcaf_flush_rewrite_rules'
wp option delete 'yith_wcaf_db_version'
wp option delete 'yith_wcaf_version'
wp option delete 'yith_wcaf_add_role_to_affiliates'
wp option delete 'yith_wcaf_referral_registration_process_dangling_commissions'
wp option delete 'yith_wcaf_referral_registration_process_orphan_commissions'
wp option delete 'yith_wcaf_share_fb'
wp option delete 'yith_wcaf_share_twitter'
wp option delete 'yith_wcaf_share_pinterest'
wp option delete 'yith_wcaf_share_email'
wp option delete 'yith_wcaf_share_whatsapp'
wp option delete 'yith_wcaf_share'
wp option delete 'yith_wcaf_share_socials'
wp option delete 'yith_wcaf_referral_registration_form_options'
wp option delete 'yith_wcaf_referral_show_fields_on_settings'
wp option delete 'yith_wcaf_referral_show_fields_on_become_an_affiliate'
wp option delete 'yith_wcaf_referral_registration_show_name_field'
wp option delete 'yith_wcaf_referral_registration_show_surname_field'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'yith_wcaf_referral_registration_show_terms_field'
wp option delete 'yith_wcaf_referral_registration_terms_label'
wp option delete 'yith_wcaf_referral_registration_terms_anchor_url'
wp option delete 'yith_wcaf_referral_registration_terms_anchor_text'
wp option delete 'woocommerce_registration_privacy_policy_text'
wp option delete 'yith_wcaf_affiliate_profile_fields_defaults'
wp option delete 'yith_wcaf_instance'
wp option delete 'yith_wcaf_commission_exclude_tax'
wp option delete 'yith_wcaf_commission_exclude_discount'
wp option delete 'yith_wcaf_general_rate'
wp option delete 'yith_wcaf_referral_make_cookie_expire'
wp option delete 'yith_wcaf_referral_cookie_expire'
wp option delete 'yith_wcaf_referral_var_name'
wp option delete 'yith_wcaf_referral_cookie_name'
wp option delete 'yith_wcaf_referral_cookie_ajax_set'
wp option delete 'yith_wcaf_dashboard_page_id'
wp option delete 'yith_wcaf_socials_title'
wp option delete 'yith_wcaf_socials_text'
wp option delete 'yith_wcaf_socials_image_url'
wp option delete 'yith_wcaf_referral_registration_show_login_form'
wp option delete 'yith_wcaf_payment_require_invoice'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
