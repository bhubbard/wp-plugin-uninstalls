#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aff_status'
wp option delete 'aff_pname'
wp option delete 'aff_user_registration_enabled'
wp option delete 'aff_customer_registration_enabled'
wp option delete 'aff_user_registration_base_amount'
wp option delete 'aff_user_registration_amount'
wp option delete 'aff_user_registration_currency'
wp option delete 'aff_user_registration_referral_status'
wp option delete 'aff_default_referral_status'
wp option delete 'affiliates_notifications'
wp option delete 'aff_notify_admin'
wp option delete 'aff_setup_hide'
wp option delete 'aff_allow_auto'
wp option delete 'aff_allow_auto_coupons'
wp option delete 'aff_notify_affiliate_user'
wp option delete 'affiliates_plugin'
wp option delete 'aff_registration'
wp option delete 'aff_registration_terms_post_id'
wp option delete 'aff_use_direct'
wp option delete 'aff_redirect'
wp option delete 'aff_id_encoding'
wp option delete 'aff_delete_data'
wp option delete 'aff_delete_network_data'
wp option delete 'aff_cookie_timeout_days'
wp option delete 'aff_duplicates'
wp option delete 'aff_registration_fields'
wp option delete 'affiliates_plugin_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'affiliates-init-time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliates-hide-review-notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliates-hide-review-notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliates-hide-review-notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliates-hide-review-notice'"
