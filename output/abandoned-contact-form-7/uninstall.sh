#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7af_mail_notify_option'
wp option delete 'cf7af_total'
wp option delete 'cf7af_smtp_option'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cf7af_send_notify_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%abandoned_specific_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%abandoned_specific_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%abandoned_specific_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%abandoned_specific_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_sentmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_sentmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_sentmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_sentmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_fail_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_fail_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_fail_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_fail_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_abandoned_specific_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_abandoned_specific_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_abandoned_specific_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_abandoned_specific_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%enable_abandoned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%enable_abandoned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%enable_abandoned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enable_abandoned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%abandoned_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%abandoned_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%abandoned_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%abandoned_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_enable_abandoned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_enable_abandoned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_enable_abandoned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_enable_abandoned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_abandoned_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_abandoned_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_abandoned_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_abandoned_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7af_mail_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7af_mail_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7af_mail_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7af_mail_status'"
