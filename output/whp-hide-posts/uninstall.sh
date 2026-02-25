#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whp_disable_hidden_on_column'
wp option delete 'whp_enabled_post_types'
wp option delete 'whp_data_migrated'
wp option delete 'whp_data_migrated_notice_closed'
wp option delete 'whp_db_version'

# Delete Transients
wp transient delete 'whp_migration_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_whp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_whp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_whp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_whp_%'"
