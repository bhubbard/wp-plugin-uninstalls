#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'at_seo_404_monitor_log'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%index' OR option_name LIKE '_site_transient_%index'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%posts' OR option_name LIKE '_site_transient_%posts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%pages' OR option_name LIKE '_site_transient_%pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%taxonomies' OR option_name LIKE '_site_transient_%taxonomies'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'at_seo_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'at_seo_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'at_seo_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'at_seo_job_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'at_seo_same_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'at_seo_same_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'at_seo_same_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'at_seo_same_as'"
