#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssslr_method'
wp option delete 'ssslr_hsts'
wp option delete 'ssslr_canonical_domain'
wp option delete 'ssslr_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
