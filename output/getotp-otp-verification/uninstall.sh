#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getotp_option_name'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_error_notice_dismissed' OR option_name LIKE '_site_transient_%_error_notice_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_crendential_error' OR option_name LIKE '_site_transient_%_crendential_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_subscription_error' OR option_name LIKE '_site_transient_%_subscription_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_quota_error' OR option_name LIKE '_site_transient_%_quota_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_crendential_error_message' OR option_name LIKE '_site_transient_%_crendential_error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_quota_error_message' OR option_name LIKE '_site_transient_%_quota_error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_subscription_error_message' OR option_name LIKE '_site_transient_%_subscription_error_message'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_otp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_otp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_otp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_otp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_otp_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_otp_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_otp_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_otp_activation'"
