#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webpc_auto'
wp option delete 'webpc_svg'
wp option delete 'webpc_ico'
wp option delete 'webpc_remove'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webpc_%'"
wp option delete 'webpc_conversion_library'
wp option delete 'webpc_200kb'
wp option delete 'webpc_1000kb'
wp option delete 'webpc_2500kb'
wp option delete 'webpc_more_2500kb'

# Delete Transients
wp transient delete 'webpc_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webpc_backup_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webpc_backup_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webpc_backup_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webpc_backup_file'"
