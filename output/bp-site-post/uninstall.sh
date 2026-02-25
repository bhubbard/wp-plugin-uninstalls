#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpsp_site_post_settings'
wp option delete 'bpsp_site_post_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest_email'"
