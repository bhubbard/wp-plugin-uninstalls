#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlsm_delete_on_uninstall'
wp option delete 'wlsm_current_session'
wp option delete 'wlsm_currency'
wp option delete 'wlsm_date_format'
wp option delete 'wlsm_gdpr_enable'

# Clear Cron Jobs
wp cron event delete 'wlsm_notify_for_invoice_generated'
wp cron event delete 'wlsm_notify_for_offline_fee_submission'
wp cron event delete 'wlsm_notify_for_student_admission'
wp cron event delete 'wlsm_notify_for_online_fee_submission'
wp cron event delete 'wlsm_notify_for_student_registration_to_student'
wp cron event delete 'wlsm_notify_for_student_registration_to_admin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlsm_school_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlsm_school_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlsm_school_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlsm_school_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlsm_current_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlsm_current_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlsm_current_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlsm_current_session'"
