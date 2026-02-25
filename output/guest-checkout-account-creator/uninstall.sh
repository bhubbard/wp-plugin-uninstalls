#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'gueschac_activated'
wp option delete 'gueschac_activation_notice_dismissed91'
wp option delete 'gueschac_settings'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'gueschac_enabled'
wp option delete 'gueschac_minimum_order'
wp option delete 'gueschac_send_welcome_email'
wp option delete 'gueschac_email_subject'
wp option delete 'gueschac_email_content'
wp option delete 'woocommerce_email_header_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gueschac_temp_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gueschac_temp_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gueschac_temp_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gueschac_temp_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_billing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_billing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_billing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_billing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_shipping_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gueschac_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gueschac_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gueschac_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gueschac_processed'"
