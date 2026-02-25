#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pt_splitter_options'

# Delete Transients
wp transient delete 'pt_splitter_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_splitter_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_splitter_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_splitter_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_splitter_output'"
