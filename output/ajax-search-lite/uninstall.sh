#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asl_analytics'
wp option delete 'asl_compatibility'
wp option delete 'asl_performance'
wp option delete 'asl_version'
wp option delete 'asl_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_conversion_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_conversion_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_conversion_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_conversion_rate'"
