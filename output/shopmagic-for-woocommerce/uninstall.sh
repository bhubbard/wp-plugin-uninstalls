#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'rewrite_rules'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_settings_tab_mailchimp_info_lname'
wp option delete 'wc_settings_tab_mailchimp_info_address'
wp option delete 'wc_settings_tab_mailchimp_info_city'
wp option delete 'wc_settings_tab_mailchimp_info_state'
wp option delete 'wc_settings_tab_mailchimp_info_country'
wp option delete 'wc_settings_tab_mailchimp_double_optin'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'wpdesk_tracker_agree'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shopmagic_ignore_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopmagic_converted_from_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopmagic_converted_from_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopmagic_converted_from_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopmagic_converted_from_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
