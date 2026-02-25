#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'sophi_site_automation_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sophi_content_sync_pending_%' OR option_name LIKE '_site_transient_sophi_content_sync_pending_%'"

# Clear Cron Jobs
wp cron event delete 'sophi_retry_get_curated_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sophi_site_automation_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sophi_site_automation_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sophi_site_automation_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sophi_site_automation_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sophi_site_automation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sophi_site_automation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sophi_site_automation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sophi_site_automation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
