#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qc_app_key'
wp option delete 'qc_subject'
wp option delete 'qc_load_comments'
wp option delete 'qc_buy_for_all'
wp option delete 'qc_tariff_id'
wp option delete 'qc_task'
wp option delete 'qc_group_id'
wp option delete 'qc_language'
wp option delete 'qc_min_rating'
wp option delete 'qc_team_id'
wp option delete 'qc_comment_configs'
wp option delete 'qc_start_time'
wp option delete 'qc_end_time'
wp option delete 'qc_limit'
wp option delete 'qc_cnt_day_limit'
wp option delete 'qc_min_day_limit'
wp option delete 'qc_max_day_limit'
wp option delete 'qc_delay_from'
wp option delete 'qc_delay_to'
wp option delete 'qc_limit_hour'
wp option delete 'qc_limit_url'
wp option delete 'qc_limit_url_day'
wp option delete 'qc_limit_author'
wp option delete 'qc_limit_author_day'
wp option delete 'qc_max_turn'
wp option delete 'qc_stop_words'
wp option delete 'qc_pay'
wp option delete 'qc_export_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qc_%'"

# Delete Transients
wp transient delete 'tariff'

# Clear Cron Jobs
wp cron event delete 'qcomment_check_comments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcomment_project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcomment_project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcomment_project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcomment_project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcomment_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcomment_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcomment_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcomment_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcomment_bought_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcomment_bought_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcomment_bought_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcomment_bought_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcomment_auto_check_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcomment_auto_check_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcomment_auto_check_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcomment_auto_check_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcomment_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcomment_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcomment_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcomment_login'"
