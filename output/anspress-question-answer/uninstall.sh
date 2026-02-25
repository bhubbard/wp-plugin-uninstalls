#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anspress_opt'
wp option delete 'anspress_db_version'
wp option delete 'anspress_using_previous'
wp option delete 'anspress_addons'
wp option delete 'ap_categories_path'
wp option delete 'ap_user_path'
wp option delete 'anspress_reputation_events'
wp option delete 'ap_tags_path'
wp option delete 'anspress_updates'
wp option delete 'anspress_license'
wp option delete 'akismet_ssl_disabled'
wp option delete 'anspress_global'
wp option delete 'featured_questions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ap_cat_%'"

# Delete Transients
wp transient delete 'ap_pages_check'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_anspress_session_%' OR option_name LIKE '_site_transient_anspress_session_%'"

# Clear Cron Jobs
wp cron event delete 'ap_delete_temp_attachments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'create_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'create_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'create_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'create_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ap_spam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ap_spam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ap_spam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ap_spam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ap_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ap_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ap_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ap_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ap_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ap_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ap_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ap_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anspress-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anspress-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anspress-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anspress-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_last_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_last_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_last_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_last_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__up_vote_casted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__up_vote_casted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__up_vote_casted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__up_vote_casted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__down_vote_casted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__down_vote_casted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__down_vote_casted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__down_vote_casted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ap_unpublished_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ap_unpublished_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ap_unpublished_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ap_unpublished_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ap_unpublished_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ap_unpublished_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ap_unpublished_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ap_unpublished_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ap_reputations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ap_reputations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ap_reputations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ap_reputations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_temp_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_temp_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_temp_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_temp_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_selected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_subscriber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_subscriber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_subscriber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_subscriber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_participants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_participants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_participants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_participants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_vote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_vote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_vote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_vote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_best_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_best_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_best_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_best_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ap_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ap_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ap_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ap_close'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ap_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ap_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ap_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ap_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ap_reputation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ap_reputation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ap_reputation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ap_reputation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
