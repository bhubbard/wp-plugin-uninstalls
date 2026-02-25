#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_adv_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_log_bad_words_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_att_hash_ind_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_att_hash_set_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_content_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_cb_att_hash_set_%'"
wp option delete 'isrc_hash'
wp option delete 'isrc_db_ver'
wp option delete 'isrc_delete_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_default_sc_%'"
wp option delete 'isrc_default_sc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isrc_cb_att_hash_ind_%'"
wp option delete 'isrc_previewdata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isrc_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isrc_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isrc_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isrc_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isrc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isrc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isrc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isrc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
