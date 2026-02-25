#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'farazsms_do_activation_redirect'
wp option delete 'farazsms_settings_options'
wp option delete 'farazsms_login_notify_options'
wp option delete 'farazsms_phonebook_options'
wp option delete 'farazsms_integrations_options'
wp option delete 'farazsms_comments_options'
wp option delete 'farazsms_newsletter_options'
wp option delete 'farazsms_woocommerce_options'
wp option delete 'farazsms_elementor_options'
wp option delete 'farazsms_edd_options'
wp option delete 'farazsms_aff_options'
wp option delete 'farazsms_membership_options'
wp option delete 'fsms_rss_meta_box'
wp option delete 'fsms_panel_expire_date'
wp option delete 'sent_low_remaining_days_30'
wp option delete 'sent_low_remaining_days_7'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'farazsms_affiliate_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'farazsms_affiliate_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'farazsms_affiliate_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'farazsms_affiliate_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wupp_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wupp_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wupp_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wupp_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sent_welcome_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sent_welcome_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sent_welcome_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sent_welcome_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'farazsms_low_credit_notify_sent_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'farazsms_low_credit_notify_sent_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'farazsms_low_credit_notify_sent_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'farazsms_low_credit_notify_sent_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sent_retention_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sent_retention_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sent_retention_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sent_retention_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
