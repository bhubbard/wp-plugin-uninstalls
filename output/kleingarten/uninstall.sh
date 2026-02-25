#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kleingarten_post_types_with_auto_likes_shortcode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'kleingarten_send_new_post_notification'
wp option delete 'kleingarten_send_new_post_notification_post_type_selection'
wp option delete 'kleingarten_new_post_notification_subject'
wp option delete 'kleingarten_new_post_notification_message'
wp option delete 'kleingarten_auto_likes_shortcode_position'
wp option delete 'kleingarten_show_footer_credits'
wp option delete 'kleingarten_login_page'
wp option delete 'kleingarten_send_account_registration_notification'
wp option delete 'kleingarten_send_account_activation_notification'
wp option delete 'kleingarten_available_positions'
wp option delete 'kleingarten_currency'
wp option delete 'kleingarten_plot_billing_items'
wp option delete 'kleingarten_units_available_for_meters'
wp option delete 'kleingarten_meter_types'
wp option delete 'kleingarten_show_status_in_admin_menu'
wp option delete 'kleingarten_anti_spam_challenge'
wp option delete 'kleingarten_anti_spam_response'
wp option delete 'kleingarten_allotment_gardener'
wp option delete 'kleingarten_pending'
wp option delete 'kleingarten_account_activation_notification_subject'
wp option delete 'kleingarten_account_activation_notification_message'
wp option delete 'kleingarten_membership_billing_items'

# Delete Transients
wp transient delete 'kleingarten_post_meta_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'positions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'positions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'positions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'positions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_task_paricipants_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_task_paricipants_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_task_paricipants_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_task_paricipants_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_meter_assignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_meter_assignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_meter_assignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_meter_assignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleingarten_invoice_was_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleingarten_invoice_was_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleingarten_invoice_was_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleingarten_invoice_was_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_status_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_status_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_status_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_status_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_project_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_project_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_project_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_project_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleingarten_invoice_canceled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleingarten_invoice_canceled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleingarten_invoice_canceled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleingarten_invoice_canceled'"
