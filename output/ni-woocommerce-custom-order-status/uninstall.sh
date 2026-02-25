#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_email_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_email_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_email_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_email_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_email_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_email_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_email_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_email_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_subject_line'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_subject_line'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_subject_line'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_subject_line'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_order_status_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_order_status_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_order_status_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_order_status_description'"
