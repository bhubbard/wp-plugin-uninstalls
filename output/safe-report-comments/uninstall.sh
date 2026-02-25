#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_threshold'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notices' OR option_name LIKE '_site_transient_%_notices'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_moderated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reported'"
