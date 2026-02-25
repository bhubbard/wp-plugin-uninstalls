#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sts_default_approver'
wp option delete 'sts_powerdby_display'
wp option delete 'sts_recaptcha_settings'
wp option delete 'sts_categories'
wp option delete 'sts_departments'
wp option delete 'sts_email_notification'
wp option delete 'sts_plugin_style'
wp option delete 'sts_approvers'
wp option delete 'default_approver_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_comment_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_comment_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_comment_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_comment_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_approver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_approver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_approver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_approver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sts_ticket_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sts_ticket_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sts_ticket_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sts_ticket_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si_support_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si_support_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si_support_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si_support_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si_support_approver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si_support_approver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si_support_approver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si_support_approver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si_support_approver_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si_support_approver_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si_support_approver_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si_support_approver_email'"
