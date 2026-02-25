#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pw_spe_prefix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_spe_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_spe_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_spe_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_spe_expiration'"
