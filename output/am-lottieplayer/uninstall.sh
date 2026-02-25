#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'am_lottieplayer_pro_load_light'

# Delete Transients
wp transient delete 'am_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
