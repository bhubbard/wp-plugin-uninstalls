#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsfp_plugin_options'
wp option delete 'nsfp_option_migration_complete'

# Delete Transients
wp transient delete 'nsfp_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_ns_featured_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_ns_featured_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_ns_featured_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_ns_featured_post'"
