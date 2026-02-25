#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cargohub_free_activation_date'
wp option delete 'cargohub_free_custom_carriers'

# Delete Transients
wp transient delete 'cargohub_free_logger_initialized'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cargohub_free_tracking_notice_%' OR option_name LIKE '_site_transient_cargohub_free_tracking_notice_%'"

# Clear Cron Jobs
wp cron event delete 'cargohub_free_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargohub_last_email_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargohub_last_email_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargohub_last_email_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargohub_last_email_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargohub_tracking_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargohub_tracking_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargohub_tracking_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargohub_tracking_email_sent'"
