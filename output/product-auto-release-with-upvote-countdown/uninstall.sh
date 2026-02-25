#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpar_settings'

# Delete Transients
wp transient delete '_parl_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_auto_release'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_auto_release'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_auto_release'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_auto_release'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_product_lead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_product_lead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_product_lead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_product_lead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_show_total_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_show_total_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_show_total_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_show_total_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_product_voted_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_product_voted_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_product_voted_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_product_voted_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_product_lead_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_product_lead_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_product_lead_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_product_lead_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_product_lead_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_product_lead_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_product_lead_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_product_lead_generated'"
