#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'wpjobportal-addon-key-error-message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transaction_key_for_%'"
wp option delete '_wpjsjp_session_'
wp option delete 'wpjp_set_theme_colors'
wp option delete 'wp_job_portal_activity_log_filter'
wp option delete 'wpjobportal_page_size'
wp option delete 'wpjobportal_countryid_for_city'
wp option delete 'wpjobportal_stateid_for_city'
wp option delete 'wpjobportal_sub_categoryid'
wp option delete 'jsjb_jm_listing_style'
wp option delete 'jsjb_jh_listing_style'
wp option delete 'wpjobportal_apply_visitor'
wp option delete 'wpjobportal_multiple_employers'
wp option delete 'wpjobportal_jobs_sample_data'
wp option delete 'wpjobportal_post_installation'
wp option delete 'job-hub-layout'
wp option delete 'sidebars_widgets'
wp option delete 'job_portal_demno_id'
wp option delete 'widget_widget_woocommerce_widget_cart'
wp option delete 'widget_search'
wp option delete 'widget_recent-posts'
wp option delete 'widget_recent-comments'
wp option delete 'widget_archives'
wp option delete 'widget_meta'
wp option delete 'widget_calendar'
wp option delete 'widget_widget_cm_recent_comments'
wp option delete 'widget_widget_cm_recent_posts'
wp option delete 'widget_nav_menu'
wp option delete 'widget_pages'
wp option delete 'widget_tag_cloud'
wp option delete 'widget_widget_cm_footeraboutus'
wp option delete 'widget_widget_cm_footerusefullinks'
wp option delete 'widget_widget_cm_footervehicleimages'
wp option delete 'widget_widget_cm_footercontactus'
wp option delete 'job_manager_demo_pages_ids'
wp option delete 'job_manager_demo_post_ids'
wp option delete 'job-portal-layout'
wp option delete 'job_portal_theme_demo_pages_ids'
wp option delete 'job_portal_theme_demo_post_ids'
wp option delete 'job_portal_theme_demo_demo_specific_data'
wp option delete 'widget_widget_wpj_recent_comments'
wp option delete 'widget_widget_wpj_recent_posts'
wp option delete 'widget_widget_wpj_footeraboutus'
wp option delete 'widget_widget_wpj_footerusefullinks'
wp option delete 'widget_widget_wpj_footercontactus'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'wpjobportal_addon_install_data'
wp option delete 'wpjobportal_addon_return_data'
wp option delete 'wpjobportalformresumeuserfield_ff'
wp option delete 'wpjobportalresumeeditadmin'
wp option delete 'wpjobportal_countryid_for_stateid'
wp option delete 'wpjp_currentversion'
wp option delete 'wpjobportal_do_activation_redirect'

# Delete Transients
wp transient delete 'wpjobportal_addon_update_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismiss-wpjobportal-addon-update-notice-%' OR option_name LIKE '_site_transient_dismiss-wpjobportal-addon-update-notice-%'"
wp transient delete 'wpjobportal_addon_update_temp_data'
wp transient delete 'wpjobportal_addon_update_temp_data_cdn'
wp transient delete 'wpjobportal_addon_update_temp_data_plugins'
wp transient delete 'wpjobportal_addon_update_temp_data_plugins_cdn'
wp transient delete 'wpjobportal_addon_hide_update_notice'
wp transient delete 'wpjobportal_addon_hide_update_expired_key_notice'
wp transient delete 'wpjobportal-social-login-data'
wp transient delete 'wpjobportal-social-login-logout-cookies'

# Clear Cron Jobs
wp cron event delete 'wpjobportal_cronjobs_action'
wp cron event delete 'jsjp_delete_expire_session_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobs_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobs_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobs_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobs_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpjobportal_packagepack_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpjobportal_packagepack_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpjobportal_packagepack_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpjobportal_packagepack_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpjobportal_perlistingpack_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpjobportal_perlistingpack_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpjobportal_perlistingpack_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpjobportal_perlistingpack_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpjobporta_billing_perlisting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpjobporta_billing_perlisting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpjobporta_billing_perlisting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpjobporta_billing_perlisting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jh_show_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jh_show_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jh_show_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jh_show_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_gplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_gplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_gplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_gplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_member_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_member_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_member_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_member_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_numberofsubcolumns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_numberofsubcolumns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_numberofsubcolumns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_numberofsubcolumns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_show_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_show_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_show_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_show_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp_headerimage_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp_headerimage_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp_headerimage_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp_headerimage_url'"
