#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f152_enabled'
wp option delete 'f152_banner_text'
wp option delete 'f152_site_url'
wp option delete 'f152_company_name'
wp option delete 'f152_company_inn'
wp option delete 'f152_company_email'
wp option delete 'f152_ym_counter'
wp option delete 'f152_popup_upper'
wp option delete 'f152_popup_func'
wp option delete 'f152_popup_anal'
wp option delete 'f152_popup_mark'
wp option delete 'f152_link_policy_pd'
wp option delete 'f152_link_consent_pd'
wp option delete 'f152_link_policy_cookie'
wp option delete 'f152_link_consent_marketing'
wp option delete 'f152_comment_enable'
wp option delete 'f152_comment_text'
wp option delete 'f152_reviews_enable'
wp option delete 'f152_reviews_text'
wp option delete 'f152_checkout_enable'
wp option delete 'f152_checkout_text'
wp option delete 'f152_cookie_domain'
wp option delete 'f152_theme'
wp option delete 'f152_color_bg'
wp option delete 'f152_color_text'
wp option delete 'f152_color_link'
wp option delete 'f152_color_btn_bg'
wp option delete 'f152_color_btn_text'
wp option delete 'f152_btn_settings_view'
wp option delete 'f152_seed_main_defaults_done'
wp option delete 'f152_btn_radius'
wp option delete 'f152_color_btn_accept_bg'
wp option delete 'f152_color_btn_accept_text'
wp option delete 'f152_color_btn_settings_bg'
wp option delete 'f152_color_btn_settings_text'
wp option delete 'f152_color_btn_reject_bg'
wp option delete 'f152_color_btn_reject_text'
wp option delete 'f152_ym_behavior'
wp option delete 'f152_ym_disable_on_reject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f152_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f152_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f152_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f152_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_f152_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_f152_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_f152_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_f152_consent'"
