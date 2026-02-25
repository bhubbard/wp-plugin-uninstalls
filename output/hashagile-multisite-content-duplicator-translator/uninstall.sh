#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hag_mcdt_deepl_api_key'
wp option delete 'hag_mcdt_default_languages'

# Delete Transients
wp transient delete 'hag_mcdt_supported_languages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hag_mcdt_is_clone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hag_mcdt_is_clone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hag_mcdt_is_clone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hag_mcdt_is_clone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hag_mcdt_sites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hag_mcdt_sites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hag_mcdt_sites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hag_mcdt_sites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hag_mcdt_languages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hag_mcdt_languages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hag_mcdt_languages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hag_mcdt_languages'"
