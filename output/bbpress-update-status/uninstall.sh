#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'rc_bbps_update_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbps_topic_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbps_topic_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbps_topic_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbps_topic_status'"
