#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scdb_version'
wp option delete 'wpsc_data_acti'

# Clear Cron Jobs
wp cron event delete 'admincheckcode'
wp cron event delete 'adminscansite'
wp cron event delete 'admincheckmenusempty_ent'
wp cron event delete 'admincheckpagetitlesempty_ent'
wp cron event delete 'admincheckposttitlesempty_ent'
wp cron event delete 'admincheckpostseoempty_ent'
wp cron event delete 'admincheckmediaseoempty_ent'
wp cron event delete 'admincheckmediaempty'
wp cron event delete 'admincheckecommerceempty_ent'
wp cron event delete 'admincheckposttagsdescempty_ent'
wp cron event delete 'admincheckcategoriesdescempty_ent'
wp cron event delete 'admincheckauthorsempty'
wp cron event delete 'admincheckmenusempty'
wp cron event delete 'admincheckpagetitlesempty'
wp cron event delete 'admincheckposttitlesempty'
wp cron event delete 'admincheckpostseoempty'
wp cron event delete 'admincheckmediaseoempty'
wp cron event delete 'admincheckmediaempty_pro'
wp cron event delete 'admincheckecommerceempty'
wp cron event delete 'admincheckposttagsdescempty'
wp cron event delete 'admincheckcategoriesdescempty'
wp cron event delete 'admincheckpagetitlesemptybase'
wp cron event delete 'admincheckposttitlesemptybase'
wp cron event delete 'wpscxscanall'
wp cron event delete 'adminscansiteempty'
wp cron event delete 'wpgcx_check_posts'
wp cron event delete 'wpgcx_check_pages'
wp cron event delete 'wpgcx_scan_site'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ignore_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ignore_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ignore_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ignore_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_review_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_review_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_review_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_review_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_times_dismissed_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_times_dismissed_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_times_dismissed_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_times_dismissed_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_notice_timing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_notice_timing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_notice_timing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_notice_timing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_notice_timing_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_notice_timing_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_notice_timing_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_notice_timing_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_notice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_notice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_notice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_notice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_times_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_times_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_times_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_times_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ignore_install_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ignore_install_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ignore_install_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ignore_install_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_update_notice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_update_notice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_update_notice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_update_notice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_usedyslexic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_usedyslexic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_usedyslexic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_usedyslexic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_slider_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_slider_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_slider_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_slider_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_outdated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_outdated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_outdated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_outdated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_pro_outdated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_pro_outdated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_pro_outdated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_pro_outdated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ent_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ent_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ent_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ent_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ent_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ent_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ent_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ent_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ent_outdated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ent_outdated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ent_outdated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ent_outdated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_warning_report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_warning_report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_warning_report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_warning_report'"
