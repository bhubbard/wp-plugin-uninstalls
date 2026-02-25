#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nobi_connect_options'
wp option delete 'ninja_forms_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nobita'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nobita'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nobita'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nobita'"
