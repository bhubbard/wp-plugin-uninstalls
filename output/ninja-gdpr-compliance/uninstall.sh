#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njt_gdpr_dataaccess'
wp option delete 'njt_gdpr_data_breach'
wp option delete 'njt_gdpr_data_rectification'
wp option delete 'njt_gdpr_eu'
wp option delete 'njt_gdpr_forget_me'
wp option delete 'njt_gdpr_integrations'
wp option delete 'njt_gdpr_policy'
wp option delete 'njt_gdpr_privacy_settings_page'
wp option delete 'njt_gdpr_term'
wp option delete 'njt_gdpr_unsub'
wp option delete 'njt_gdpr_version'
wp option delete 'njt_gdpr'
wp option delete 'njt_gdpr_cookie_popup_content'
wp option delete 'njt_gdpr_cookie_popup_agree_text'
wp option delete 'njt_gdpr_cookie_popup_decline_text'
wp option delete 'njt_gdpr_cookie_popup_display_type'
wp option delete 'njt_gdpr_cookie_popup_hide_pages'
wp option delete 'njt_gdpr_cookie_popup_show_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_mail_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_mail_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_mail_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_mail_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'njt_gdpr_allow_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'njt_gdpr_allow_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'njt_gdpr_allow_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'njt_gdpr_allow_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'njt_gdpr_acceped_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'njt_gdpr_acceped_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'njt_gdpr_acceped_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'njt_gdpr_acceped_policy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'njt_gdpr_acceped_policy_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'njt_gdpr_acceped_policy_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'njt_gdpr_acceped_policy_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'njt_gdpr_acceped_policy_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'njt_gdpr_acceped_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'njt_gdpr_acceped_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'njt_gdpr_acceped_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'njt_gdpr_acceped_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'njt_gdpr_acceped_term_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'njt_gdpr_acceped_term_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'njt_gdpr_acceped_term_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'njt_gdpr_acceped_term_at'"
