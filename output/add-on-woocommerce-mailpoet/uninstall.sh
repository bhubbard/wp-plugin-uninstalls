#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_mailpoet_segment_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscription_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_show_unsubscribe'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_unsubscribe_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkbox_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multi_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_gdpr_consent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_subscription_consent_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_checkout_label'"
wp option delete 'wc_mailpoet_subscription_position'
wp option delete 'wc_mailpoet_double_optin'
wp option delete 'wc_mailpoet_uninstall_data'

