#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pipp_opts'
wp option delete 'pipp_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popupi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popupi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popupi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popupi'"
