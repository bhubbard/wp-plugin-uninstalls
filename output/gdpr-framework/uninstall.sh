#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdpr_privacy_safe_params'
wp option delete 'gdpr_privacy_safe_imagecode'
wp option delete 'gdpr_privacy_safe_backlink'
wp option delete 'gdpr_custom_policy_page'
wp option delete 'gdpr_enable_stylesheet'
wp option delete 'gdpr_enable'
wp option delete 'gdpr_policy_page'
wp option delete 'gdpr_popup_content'
wp option delete 'gdpr_popup_dismiss_text'
wp option delete 'gdpr_popup_allow_text'
wp option delete 'gdpr_popup_learnmore_text'
wp option delete 'gdpr_popup_position'
wp option delete 'gdpr_header'
wp option delete 'gdpr_popup_background'
wp option delete 'gdpr_popup_text'
wp option delete 'gdpr_popup_button_background'
wp option delete 'gdpr_popup_button_text'
wp option delete 'gdpr_popup_link_target'
wp option delete 'gdpr_popup_border_text'
wp option delete 'gdpr_popup_theme'
wp option delete 'gdpr_policy_popup'
wp option delete 'gdpr_onetime_popup'
wp option delete 'gdpr_enable_popup'
wp option delete 'gdpr_consent_until_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'gdpr_privacy_safe_backlink_selected'
wp option delete 'gdpr_name_from'
wp option delete 'gdpr_email_from'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'gdpr_plugin_version'
wp option delete 'gdpr_classidocs_integration'
wp option delete 'gdpr_classidocs_url'
wp option delete 'gdpr_classidocs_username'
wp option delete 'gdpr_classidocs_password'
wp option delete 'privacysafe'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donotsell_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donotsell_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donotsell_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donotsell_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donotsell_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donotsell_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donotsell_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donotsell_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donotsell_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donotsell_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donotsell_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donotsell_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_anonymized_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_anonymized_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_anonymized_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_anonymized_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'community-events-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'community-events-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'community-events-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'community-events-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_cf7_email_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_cf7_email_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_cf7_email_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_cf7_email_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_cf7_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_cf7_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_cf7_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_cf7_enabled'"
