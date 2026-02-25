#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ig_tc_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ig_tc_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ig_tc_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ig_tc_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ig_tc_mb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ig_tc_mb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ig_tc_mb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ig_tc_mb'"
