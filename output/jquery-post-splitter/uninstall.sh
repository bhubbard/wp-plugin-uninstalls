#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jps_options'
wp option delete 'jps_restrictions'
wp option delete 'jps_analytics_id'
wp option delete 'jps_custom_style'
wp option delete 'jps_custom_section'
wp option delete 'jps_custom_section_below'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jps_nav_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jps_nav_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jps_nav_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jps_nav_type'"
