#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'VWvideoRecorderOptions'
wp option delete 'VWvideoShareOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5v_dark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5v_dark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5v_dark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5v_dark'"
