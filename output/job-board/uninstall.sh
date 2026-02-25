#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'cstmsrch_options'
wp option delete 'jbbrd_options'
wp option delete 'jbbrd_custom_metafield_error_notice'
wp option delete 'sndr_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Clear Cron Jobs
wp cron event delete 'jbbrd_move_vacancies_to_archive_dayly_function'
wp cron event delete 'sndr_mail_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jbbrd_job_candidate_category_choose'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jbbrd_job_candidate_category_choose'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jbbrd_job_candidate_category_choose'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jbbrd_job_candidate_category_choose'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jbbrd_user_cv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jbbrd_user_cv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jbbrd_user_cv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jbbrd_user_cv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_candidate_saved_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_candidate_saved_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_candidate_saved_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_candidate_saved_search'"
