#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cttm_options'
wp option delete 'travelersmap_version'
wp option delete 'travelersmap_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_latlngmarker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_latlngmarker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_latlngmarker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_latlngmarker'"
