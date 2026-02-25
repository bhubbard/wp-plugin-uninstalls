#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxpoll_flush_rewrite_rules'
wp option delete 'cbxpoll_version'
wp option delete 'cbxpoll_emails'
wp option delete 'cbxpoll_email_tpl'
wp option delete 'cbxpoll_global_settings'

# Delete Transients
wp transient delete 'cbxpoll_activated_notice'
wp transient delete 'cbxpoll_flush_rewrite_rules'
wp transient delete 'cbxpoll_upgraded_notice'
wp transient delete 'cbxpollproaddon_forcedactivated_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_total_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_total_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_total_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_total_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_never_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_never_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_never_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_never_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_answer_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_answer_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_answer_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_answer_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_answer_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_answer_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_answer_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_answer_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_show_result_before_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_show_result_before_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_show_result_before_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_show_result_before_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_result_chart_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_result_chart_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_result_chart_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_result_chart_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxpoll_multivote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxpoll_multivote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxpoll_multivote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxpoll_multivote'"
