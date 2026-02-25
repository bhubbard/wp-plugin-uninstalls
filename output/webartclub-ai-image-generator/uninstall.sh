#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webartclub_option_name'
wp option delete 'webart_check_requests_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_if_generated_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_if_generated_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_if_generated_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_if_generated_img'"
