#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'squeeze_stats'
wp option delete 'squeeze_options'
wp option delete 'squeeze_do_activation_redirect'

# Delete Transients
wp transient delete 'squeeze_bulk_path'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'squeeze_is_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'squeeze_is_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'squeeze_is_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'squeeze_is_compressed'"
