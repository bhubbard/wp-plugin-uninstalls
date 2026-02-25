#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_client_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_client_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_client_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_client_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_ip_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_ip_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_ip_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_ip_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_hit_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_hit_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_hit_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_hit_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pro_key_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pro_key_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pro_key_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pro_key_post_id'"
