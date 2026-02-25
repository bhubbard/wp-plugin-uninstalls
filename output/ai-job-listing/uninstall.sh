#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'axilweb_ajl_career_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%career_page'"
wp option delete 'axilweb_ajl_job_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_page_already_created'"

# Delete Transients
wp transient delete 'axilweb_ajl_career_page_id'

# Clear Cron Jobs
wp cron event delete 'axilweb_ajl_update_expired_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'full_name'"
