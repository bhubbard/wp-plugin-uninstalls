#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etivite_bp_restrict_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etivite_bp_restrict_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etivite_bp_restrict_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etivite_bp_restrict_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etivite_bp_restrict_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
