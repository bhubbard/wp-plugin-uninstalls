#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fake_subdomain_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fake_subdomain_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fake_subdomain_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fake_subdomain_value_key'"
