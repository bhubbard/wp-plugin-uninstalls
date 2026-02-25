#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'graphina_mysql_database_setting'
wp option delete 'graphina_common_setting'

# Delete Transients
wp transient delete 'graphina_pro_db_tables'
wp transient delete 'graphina_pro_external_db_tables'
wp transient delete 'graphina-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
