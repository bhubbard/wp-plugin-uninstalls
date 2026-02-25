#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fieldtype'"
wp option delete 'effcf_fields_root'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fieldtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fieldtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fieldtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fieldtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_binding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_binding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_binding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_binding'"
