#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_gforms_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_typewheel_notices'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_typewheel_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_typewheel_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_typewheel_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_typewheel_notices'"
