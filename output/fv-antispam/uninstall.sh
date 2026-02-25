#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_antispam_ver'
wp option delete 'fv_antispam'
wp option delete 'fv_antispam_filledin_conflict'
wp option delete 'fv_antispam_faqtastic'
wp option delete 'wordpress_api_key'
wp option delete 'fv_antispam_registrations'
wp option delete 'jetpack_active_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors'"

# Delete Transients
wp transient delete 'plugin_slugs'

# Clear Cron Jobs
wp cron event delete 'fv_clean_trash_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv-antispam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv-antispam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv-antispam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv-antispam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_antispam_debug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_antispam_debug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_antispam_debug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_antispam_debug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv-antispam-post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv-antispam-post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv-antispam-post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv-antispam-post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv-antispam-server'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv-antispam-server'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv-antispam-server'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv-antispam-server'"
