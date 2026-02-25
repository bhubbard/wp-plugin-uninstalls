#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ta_request_check_excluded_routes'
wp option delete 'ta_publishable_key'
wp option delete 'ta_secret_key'
wp option delete 'ta_request_check_enabled'
wp option delete 'ta_user_verification_enabled'
wp option delete 'ta_button_default_text'
wp option delete 'ta_button_default_style'
wp option delete 'ta_button_show_info'
wp option delete 'ta_button_default_width'
wp option delete 'ta_restricted_user_verification_page'
wp option delete 'ta_traffic_validation_enabled'
wp option delete 'ta_user_validation_enabled'
wp option delete 'ta_user_validation_auto_bind'
wp option delete 'ta_user_validation_bind_existing'
wp option delete 'ta_user_validation_identifier_type'
wp option delete 'ta_request_check_timeout_ms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restricted_ta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restricted_ta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restricted_ta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restricted_ta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_restricted_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_restricted_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_restricted_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_restricted_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_needs_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_needs_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_needs_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_needs_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_verification_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_verification_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_verification_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_verification_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified_ta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified_ta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified_ta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified_ta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_with_ta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_with_ta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_with_ta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_with_ta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocked_ta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocked_ta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocked_ta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocked_ta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_verification_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_verification_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_verification_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_verification_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_email_validation_valid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_email_validation_valid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_email_validation_valid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_email_validation_valid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_unique_browser_fingerprint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_unique_browser_fingerprint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_unique_browser_fingerprint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_unique_browser_fingerprint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_pending_session_binding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_pending_session_binding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_pending_session_binding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_pending_session_binding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_bound'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_bound'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_bound'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_bound'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_bound_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_bound_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_bound_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_bound_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_bound_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_bound_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_bound_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_bound_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_bound_identifier_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_bound_identifier_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_bound_identifier_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_bound_identifier_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_validation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_validation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_validation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_validation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_validation_last_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_validation_last_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_validation_last_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_validation_last_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_highest_severity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_highest_severity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_highest_severity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_highest_severity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_blocked_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_blocked_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_blocked_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_blocked_reason'"
