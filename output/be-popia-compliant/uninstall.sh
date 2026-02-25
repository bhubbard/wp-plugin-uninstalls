#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpc_v'
wp option delete 'bpc_hasPro'
wp option delete 'bpc_rowcount1'
wp option delete 'bpc_rowcount2'
wp option delete 'bpc_rowcount'
wp option delete 'expiry'
wp option delete 'comp_date'
wp option delete 'bpc_disable'
wp option delete 'be_popia_compliant_banner-field11-background-color'
wp option delete 'be_popia_compliant_banner-field12-text-color'
wp option delete 'bpc_timestamp'
wp option delete 'bpc_cp'
wp option delete 'bpc_cs'
wp option delete 'bpc_cw'
wp option delete 'bpc_cm'
wp option delete 'bpc_ct'
wp option delete 'bpc_ce'
wp option delete 'bpc_cca'
wp option delete 'bpc_ccb'
wp option delete 'bpc_ccc'
wp option delete 'bpc_mp'
wp option delete 'bpc_ms'
wp option delete 'bpc_mw'
wp option delete 'bpc_mm'
wp option delete 'bpc_mt'
wp option delete 'bpc_me'
wp option delete 'bpc_mca'
wp option delete 'bpc_mcb'
wp option delete 'bpc_mcc'
wp option delete 'bpc_consent_url'
wp option delete 'update_status'
wp option delete 'has_active_keys'
wp option delete 'is_suspended'
wp option delete 'main_bpc'
wp option delete 'this_domain_identity'
wp option delete 'be_popia_compliant_cookie-field9-disable-bpc-cookie-banner'
wp option delete 'be_popia_compliant_cookie-field1-cookie-message'
wp option delete 'be_popia_compliant_cookie-field3-cookie-button-text'
wp option delete 'be_popia_compliant_cookie-field2-checkbox-privacy-policy'
wp option delete 'be_popia_compliant_cookie-field5-background-color'
wp option delete 'be_popia_compliant_cookie-field6-text-color'
wp option delete 'be_popia_compliant_cookie-field7-button-background-color'
wp option delete 'be_popia_compliant_cookie-field8-button-text-color'
wp option delete 'be_popia_compliant_cookie-field4-cookie-plugin-placement'
wp option delete 'be_popia_compliant_cookie-field10-banner-logo-selector'
wp option delete 'bpc_report'
wp option delete 'cron_last_fired_at'
wp option delete 'bpc_refference'
wp option delete 'bpc_consent_to_update'
wp option delete 'bpc_data_request'
wp option delete 'bpc_data_request_approved'
wp option delete 'bpc_data_deletion'
wp option delete 'bpc_data_deletion_approved'
wp option delete 'testIDs'
wp option delete 'multi_result'
wp option delete 'data_to_send'
wp option delete 'the_format'
wp option delete 'test_got_idnumber'
wp option delete 'test_got_response'
wp option delete 'body_before'
wp option delete 'body_after'
wp option delete 'test_got_id'
wp option delete 'bpc_logged_in_user'
wp option delete 'woocommerce_checkout_privacy_policy_text'
wp option delete 'woocommerce_registration_privacy_policy_text'
wp option delete 'userIDis'
wp option delete 'userOtherIDis'
wp option delete 'userOtherIDtypeIs'
wp option delete 'userOtherIDIssueIs'
wp option delete 'billUserIDis'
wp option delete 'billUserOtherIDis'
wp option delete 'billUserOtherIDtypeIs'
wp option delete 'billUserOtherIDIssueIs'

# Clear Cron Jobs
wp cron event delete 'be_popia_compliant_daily_event'
wp cron event delete 'be_popia_compliant_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpc_comms_market_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpc_comms_market_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpc_comms_market_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpc_comms_market_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_identification_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_identification_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_identification_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_identification_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other_identification_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other_identification_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other_identification_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other_identification_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other_identification_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other_identification_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other_identification_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other_identification_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other_identification_issue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other_identification_issue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other_identification_issue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other_identification_issue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_provided_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_provided_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_provided_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_provided_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_user_SAID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_user_SAID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_user_SAID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_user_SAID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_user_OtherID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_user_OtherID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_user_OtherID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_user_OtherID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_user_SAID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_user_SAID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_user_SAID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_user_SAID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_user_OtherID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_user_OtherID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_user_OtherID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_user_OtherID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_user_OIDT'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_user_OIDT'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_user_OIDT'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_user_OIDT'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_user_OIDI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_user_OIDI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_user_OIDI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_user_OIDI'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_user_OIDT'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_user_OIDT'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_user_OIDT'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_user_OIDT'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_user_OIDI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_user_OIDI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_user_OIDI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_user_OIDI'"
