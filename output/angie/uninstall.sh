#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'angie_external_scripts_consent'
wp option delete 'angie_sidebar_default_state'

# Delete Transients
wp transient delete 'angie_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_angie_snippet_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_angie_snippet_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_angie_snippet_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_angie_snippet_files'"
