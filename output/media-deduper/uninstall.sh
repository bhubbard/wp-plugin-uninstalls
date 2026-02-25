#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'mdd_version'
wp option delete 'mdd_reindex_updated'
wp option delete 'mdd_reindex_option_changed'
wp option delete 'mdd-activated'

# Delete Transients
wp transient delete 'mdd_wp_cron_request'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mdd_count_%' OR option_name LIKE '_site_transient_mdd_count_%'"
wp transient delete 'mdd_duplicate_ids'
wp transient delete 'mdd_sharedfile_ids'
wp transient delete 'mdd_count_all'
wp transient delete 'mdd_count_indexed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdd_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdd_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdd_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdd_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdd_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdd_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdd_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdd_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdd_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdd_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdd_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdd_size'"
