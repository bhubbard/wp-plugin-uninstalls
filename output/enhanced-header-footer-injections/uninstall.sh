#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nlws_ehfi_settings'
wp option delete 'nlws_ehfi_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nlws_efhi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nlws_efhi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nlws_efhi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nlws_efhi'"
