#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'pqfw_quotations_cart'
wp option delete 'pqfw_settings'
wp option delete '_pqfw_activation_redirect'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_customer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_customer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_customer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_customer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_customer_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_customer_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_customer_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_customer_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_customer_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_customer_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_customer_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_customer_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_products_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_products_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_products_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_products_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_products_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_products_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_products_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_products_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqfw_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqfw_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqfw_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqfw_customer_name'"
