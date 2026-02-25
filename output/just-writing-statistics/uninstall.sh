#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jws_version'
wp option delete 'jws_roles'
wp option delete 'jws_stopwords_options'
wp option delete 'jws_admin_options'
wp option delete 'jws_reading_time'
wp option delete 'jws_excluded_types'
wp option delete 'jws_stats_calculated'
wp option delete 'wpwcp_reading_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_updated_post'"
