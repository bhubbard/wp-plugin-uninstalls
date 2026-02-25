#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__wpdm_bsversion'
wp option delete '__wpdm_activation_redirect'
wp option delete '__wpdm_publicly_queryable'
wp option delete '__wpdm_gutenberg_editor'
wp option delete '__wpdm_purl_with_front'
wp option delete '__wpdm_has_archive'
wp option delete '__wpdm_archive_page_slug'
wp option delete '__wpdm_exclude_from_search'
wp option delete '__wpdm_turl_base'
wp option delete '__wpdm_color_scheme'
wp option delete '__wpdm_adblocked_off'
wp option delete '__wpdm_modal_login'
wp option delete '__wpdm_adblocked_msg'
wp option delete '__wpdm_adblocked_msgd'
wp option delete '__wpdm_hide_admin_notice'
wp option delete '__hide_wpdmpro_notice'
wp option delete '__wpdm_cpage'
wp option delete '__wpdmcategory'
wp option delete '__wpdm_cpage_style'
wp option delete '__wpdm_sanitize_filename'
wp option delete '__wpdm_skip_locks'
wp option delete '__wpdm_login_form'
wp option delete '__wpdm_cat_desc'
wp option delete '__wpdm_cat_img'
wp option delete '__wpdm_cat_tb'
wp option delete '__wpdm_front_end_access'
wp option delete '__wpdm_noip'
wp option delete '__wpdm_delstats_on_udel'
wp option delete '__wpdm_checkout_privacy'
wp option delete '__wpdm_checkout_privacy_label'
wp option delete '__wpdm_tmp_storage'
wp option delete '__wpdm_auto_clean_cache'
wp option delete '__wpdm_cron_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '__wpdm_etpl_%'"
wp option delete '__wpdm_email_template'
wp option delete '__wpdm_email_setting'
wp option delete '__wpdm_user_dashboard'
wp option delete '__wpdm_welcome'
wp option delete '__wpdm_ping'
wp option delete '__wpdm_chunk_upload'
wp option delete '__wpdm_chunk_size'
wp option delete '_wpdm_recaptcha_site_key'
wp option delete '_wpdm_recaptcha_secret_key'
wp option delete '__wpdm_front_end_admin'
wp option delete '__wpdm_author_dashboard'
wp option delete '_wpdm_file_browser_root'
wp option delete '_wpdm_file_browser_access'
wp option delete '_wpdm_recaptcha_project_id'
wp option delete '__wpdm_recaptcha_regform'
wp option delete '__wpdm_recaptcha_loginform'
wp option delete '__wpdm_blocked_ips'
wp option delete '__wpdm_blocked_ips_msg'
wp option delete '__wpdm_allowed_file_types'
wp option delete '__wpdm_download_limit_exceeded'
wp option delete '__wpdm_permission_denied_msg'
wp option delete 'wpdm_login_msg'
wp option delete '__wpdm_mask_dlink'
wp option delete '__wpdm_download_speed'
wp option delete '__wpdm_download_resume'
wp option delete '__wpdm_support_output_buffer'
wp option delete '__wpdm_open_in_browser'
wp option delete '__wpdm_mdl_off'
wp option delete '__wpdm_login_url'
wp option delete '__wpdm_register_url'
wp option delete '__wpdm_signup_email_verify'
wp option delete '__wpdm_pwsc'
wp option delete '__wpdm_signup_autologin'
wp option delete '__wpdm_rss_feed_main'
wp option delete '_wpdm_social_lock_panel_title'
wp option delete '_wpdm_social_lock_panel_desc'
wp option delete '_wpdm_facebook_app_id'
wp option delete '_wpdm_facebook_app_secret'
wp option delete '_wpdm_google_app_secret'
wp option delete '_wpdm_google_client_id'
wp option delete '_wpdm_google_client_secret'
wp option delete '_wpdm_linkedin_client_id'
wp option delete '_wpdm_linkedin_client_secret'
wp option delete '_wpdm_twitter_access_token'
wp option delete '_wpdm_twitter_access_token_secret'
wp option delete '_wpdm_twitter_api_key'
wp option delete '_wpdm_twitter_api_secret'
wp option delete '__wpdm_social_login'
wp option delete '__wpdm_ui_download_button'
wp option delete '__wpdm_ui_download_button_sc'
wp option delete '__wpdm_enable_gf'
wp option delete '__wpdm_google_font'
wp option delete '__wpdm_ui_colors'
wp option delete '__wpdm_disable_frontend_css'
wp option delete '__wpdm_crop_thumbs'
wp option delete '__wpdm_left_aligned'
wp option delete '_wpdm_etpl'
wp option delete 'wpdm_setup_complete'
wp option delete '__wpdm_purl_base'
wp option delete '__wpdm_curl_base'
wp option delete '__wpdm_user_type'
wp option delete '__wpdm_total_downloads'
wp option delete '__wpdm_max_upload_size'
wp option delete '__wpdm_private_link_expiration_period'
wp option delete '__wpdm_private_link_expiration_period_unit'
wp option delete '__wpdm_media_private'
wp option delete '__wpdm_individual_file_download'
wp option delete '_wpdm_hide_all'
wp option delete '__wpdm_flat_download_url'
wp option delete '__wpdm_private_link_usage_limit'
wp option delete '__wpdm_disable_scripts'
wp option delete '__wpdm_blocked_domain_msg'
wp option delete '__wpdm_pending_approval_msg'
wp option delete '__wpdm_suspended_acc_msg'
wp option delete '__wpdm_declined_signup_msg'
wp option delete '__wpdm_signup_roles'
wp option delete '__wpdm_signups_need_approval'
wp option delete '__wpdm_author_profile'
wp option delete '__wpdm_download_url_base'
wp option delete '__wpdm_delete_expired'
wp option delete '__wpdm_enc_key'
wp option delete '_fm_email_template_status'
wp option delete '__wpdm_allow_index'
wp option delete '__wpdm_parallel_download'
wp option delete '__wpdm_db_version'
wp option delete 'wpdm_latest'
wp option delete '__wpdm_activation_history'
wp option delete '__wpdm_access_token'
wp option delete '__wpdm_verify_dns'
wp option delete '__wpdm_blocked_domains'
wp option delete '__wpdm_blocked_emails'
wp option delete '__wpdm_author_space'
wp option delete '__wpdm_parallel_download_msg'

# Delete Transients
wp transient delete 'wpdm_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'do_pings'
wp cron event delete '__wpdm_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_pagestyle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_pagestyle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_pagestyle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_pagestyle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_masterkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_masterkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_masterkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_masterkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_additional_previews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_additional_previews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_additional_previews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_additional_previews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_changelog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_changelog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_changelog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_changelog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_terms_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_terms_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_terms_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_terms_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_terms_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_terms_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_terms_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_terms_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_terms_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_terms_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_terms_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_terms_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_terms_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_terms_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_terms_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_terms_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_terms_check_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_terms_check_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_terms_check_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_terms_check_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_password_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_password_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_password_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_password_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_captcha_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_captcha_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_captcha_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_captcha_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_legacy_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_legacy_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_legacy_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_legacy_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_package_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_package_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_package_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_package_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_quota'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_quota'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_quota'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_quota'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'working_dir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'working_dir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'working_dir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'working_dir'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_user_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_user_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_user_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_user_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_media_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_media_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_media_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_media_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_media_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_media_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_media_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_media_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_private'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_individual_file_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_individual_file_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_individual_file_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_individual_file_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_email_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_email_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_email_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_email_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_gplusone_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_gplusone_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_gplusone_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_gplusone_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_tweet_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_tweet_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_tweet_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_tweet_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_twitterfollow_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_twitterfollow_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_twitterfollow_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_twitterfollow_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_facebooklike_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_facebooklike_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_facebooklike_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_facebooklike_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_linkedin_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_linkedin_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_linkedin_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_linkedin_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_download_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_download_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_download_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_download_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_zipped_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_zipped_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_zipped_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_zipped_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_package_size_b'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_package_size_b'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_package_size_b'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_package_size_b'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_expire_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_expire_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_expire_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_expire_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '__wpdmkey_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '__wpdmkey_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '__wpdmkey_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '__wpdmkey_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_favs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_favs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_favs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_favs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_password_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_password_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_password_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_password_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'password_usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'password_usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'password_usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'password_usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_link_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_link_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_link_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_link_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_items_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_items_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_items_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_items_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_form_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_form_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_form_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_form_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_following'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_following'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_following'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_following'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_blocked_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_blocked_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_blocked_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_blocked_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '__wpdm_users_params%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '__wpdm_users_params%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '__wpdm_users_params%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '__wpdm_users_params%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdm_cregf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdm_cregf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdm_cregf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdm_cregf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_space'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_space'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_space'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_space'"
