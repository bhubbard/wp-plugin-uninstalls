#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'direktt_qr_code_logo_url'
wp option delete 'direktt_qr_code_color'
wp option delete 'direktt_qr_code_bckg_color'
wp option delete 'direktt_pairing_prefix'
wp option delete 'direktt_api_key'
wp option delete 'direktt_channel_title'
wp option delete 'direktt_channel_id'
wp option delete 'direktt_unauthorized_redirect_url'
wp option delete 'direktt_timestamp_display_format'
wp option delete 'direktt_pairing_succ_template'
wp option delete 'direktt_registered_domain'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_test_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_test_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_test_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_test_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_user_pair_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_user_pair_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_user_pair_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_user_pair_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_custom_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_custom_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_custom_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_custom_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_custom_admin_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_custom_admin_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_custom_admin_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_custom_admin_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_user_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_user_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_user_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_user_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_user_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_user_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_user_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_user_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direkttMTJson'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direkttMTJson'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direkttMTJson'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direkttMTJson'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direkttMTType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direkttMTType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direkttMTType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direkttMTType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_marketing_consent_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_marketing_consent_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_marketing_consent_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_marketing_consent_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_admin_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_admin_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_admin_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_admin_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_membership_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_membership_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_membership_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_membership_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direktt_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direktt_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direktt_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direktt_avatar_url'"
