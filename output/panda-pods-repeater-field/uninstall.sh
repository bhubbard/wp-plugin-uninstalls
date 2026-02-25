#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpods_all_tables'
wp option delete 'pprf_updated_tables'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pod_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pandarepeaterfield_field_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pandarepeaterfield_field_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pandarepeaterfield_field_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pandarepeaterfield_field_width'"
