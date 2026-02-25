#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pg_sas_type_children'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pg-sas-image-size-%' OR option_name LIKE '_site_transient_pg-sas-image-size-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
