#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fundcollector_last_translation_update'
wp option delete 'fundcollector_form_dynamic_css'
wp option delete 'fundcollector_debug_dates'
wp option delete 'fundcollector_ajax_debug_logged'

# Delete Transients
wp transient delete 'fundcollector_settings_errors'
wp transient delete 'fundcollector_settings_updated'
wp transient delete 'fundcollector_critical_db_errors'
wp transient delete 'fundcollector_forms_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fundcollector_token_%' OR option_name LIKE '_site_transient_fundcollector_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fundcollector_payment_failed_%' OR option_name LIKE '_site_transient_fundcollector_payment_failed_%'"

# Clear Cron Jobs
wp cron event delete 'fundcollector_cleanup_temp_data'
wp cron event delete 'fundcollector_cleanup_expired_donations'
wp cron event delete 'fundcollector_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%'"
