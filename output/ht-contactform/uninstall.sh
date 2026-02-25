#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_form_global_settings'
wp option delete 'ht_form_integrations'
wp option delete 'ht_contactform_diagnostic_data_agreed'
wp option delete 'ht_contactform_diagnostic_data_notice'
wp option delete 'ht_form_zohocrm_tokens'

# Delete Transients
wp transient delete 'ht_contactform-notice-id-diagnostic-data'
wp transient delete 'ht_form_zohocrm_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ht_form_zohocrm_fields_%' OR option_name LIKE '_site_transient_ht_form_zohocrm_fields_%'"

# Clear Cron Jobs
wp cron event delete 'ht_form_drafts_cleanup'
wp cron event delete 'ht_contactform_remove_old_entries'
wp cron event delete 'ht_form_temp_files_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integrations'"
