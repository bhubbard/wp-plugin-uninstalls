#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epjbjobboard_price_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epjbcat_map_marker_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'city_main_image_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epjbcate_main_image_%'"
wp option delete 'jobboard_payment_gateway'
wp option delete 'jobboard_profile_fields'
wp option delete 'jobboard_field_type'
wp option delete 'jobboard_field_type_value'
wp option delete 'jobboard_field_type_roles'
wp option delete 'jobboard_signup_fields'
wp option delete 'jobboard_myaccount_fields'
wp option delete 'jobboard_signup_require'
wp option delete 'jobboard_signup_profile_pic'
wp option delete 'epjbjobboard_payment_coupon'
wp option delete 'jobboard_payment_terms'
wp option delete 'epjbdir_dir_claim'
wp option delete 'epjbdir_searchbar_show'
wp option delete 'epjbdir_agent_show'
wp option delete 'eprecaptcha_api'
wp option delete 'epjbdir_map_api'
wp option delete 'user_can_publish'
wp option delete 'epjbdir_search_keyword'
wp option delete 'epjbdir_search_city'
wp option delete 'epjbdir_search_tag'
wp option delete 'epjbdir_search_category'
wp option delete 'epjbdir_search_zipcode'
wp option delete 'epjbdir_search_type'
wp option delete 'epjbdir_map_zoom'
wp option delete 'epjbsimilar_job'
wp option delete 'epjbcontact_form'
wp option delete 'epjbcontact_info'
wp option delete 'epjbdir_features'
wp option delete 'epjbdir_share'
wp option delete 'epjbjobboard_url'
wp option delete 'job_dir_map'
wp option delete 'job_dir_video'
wp option delete 'jobboard_dir_images'
wp option delete 'jobboard_apply'
wp option delete 'jobboard_single_bookmark'
wp option delete 'jooboard_single_tag'
wp option delete 'jobboard_single_pdf'
wp option delete 'dir5_background_color'
wp option delete 'dir5_content_color'
wp option delete 'dir_style5_email'
wp option delete 'dir_facet_cat_title'
wp option delete 'dir_contact_form'
wp option delete 'dir_form_shortcode'
wp option delete 'jobboard_archive_template'
wp option delete 'dir_facet_cat_show'
wp option delete 'dir_facet_location_title'
wp option delete 'dir_facet_location_show'
wp option delete 'dir_facet_area_title'
wp option delete 'dir_facet_area_show'
wp option delete 'dir_facet_features_title'
wp option delete 'dir_facet_features_show'
wp option delete 'dir_facet_postdate_title'
wp option delete 'dir_facet_postdate_show'
wp option delete 'dir_facet_zipcode_title'
wp option delete 'dir_facet_zipcode_show'
wp option delete 'dir_facet_postdeadline_title'
wp option delete 'dir_facet_postdeadline_show'
wp option delete 'dir_facet_salary_title'
wp option delete 'dir_facet_salary_show'
wp option delete 'dir_facet_jobtype_title'
wp option delete 'dir_facet_jobtype_show'
wp option delete 'dir_facet_experiencerange_title'
wp option delete 'dir_facet_experiencerange_show'
wp option delete 'dir_facet_educational_title'
wp option delete 'dir_facet_educational_show'
wp option delete 'dir_facet_joblevel_title'
wp option delete 'dir_facet_joblevel_show'
wp option delete 'dir_facet_gender_title'
wp option delete 'dir_facet_gender_show'
wp option delete 'grid_col1500'
wp option delete 'grid_col1100'
wp option delete 'grid_col768'
wp option delete 'grid_col480'
wp option delete 'grid_col375'
wp option delete 'epjbarchive_template'
wp option delete 'epjbeploan_calculator'
wp option delete 'dir_style_font'
wp option delete 'directories_layout_single'
wp option delete 'jobboard_profile_menu'
wp option delete 'epjbjobboard_menu_listinghome'
wp option delete 'epjbjobboard_mylevel'
wp option delete 'epjbjobboard_menusetting'
wp option delete 'epjbjobboard_menuallpost'
wp option delete 'epjbjobboard_menunecandidates'
wp option delete 'epjbjobboard_messageboard'
wp option delete 'epjbjobboard_notification'
wp option delete 'epjbjobboard_candidate_bookmarks'
wp option delete 'epjbjobboard_employer_bookmarks'
wp option delete 'epjbjobboard_job_bookmarks'
wp option delete 'jobboard_fields'
wp option delete 'job_level'
wp option delete 'job_status'
wp option delete 'experience_range'
wp option delete 'epjbjobboard_api_currency'
wp option delete 'jobboard_payment_terms_text'
wp option delete 'jobboard_post_approved'
wp option delete 'jobboard_signup_redirect'
wp option delete 'epjbjobboard_profile_page'
wp option delete 'epjbjobboard_profile_public_page'
wp option delete 'epjbjobboard_hide_admin_bar'
wp option delete 'epjbjobboard_active_visibility'
wp option delete 'epjbiv_visibility_login_message'
wp option delete 'epjbiv_visibility_visitor_message'
wp option delete 'epjbiv_visibility_serialize_role'
wp option delete 'epjbjobboard_registration'
wp option delete 'epjbjobboard_profile_public'
wp option delete 'epjbjobboard_thank_you_page'
wp option delete 'epjbjobboard_login_page'
wp option delete 'epjbjobboard_employer_dir_page'
wp option delete 'epjbjobboard_candidate_dir_page'
wp option delete 'epjbjobboard_employer_public_page'
wp option delete 'epjbjobboard_candidate_public_page'
wp option delete 'jobboard_signup_email_subject'
wp option delete 'jobboard_signup_email'
wp option delete 'jobboard_forget_email_subject'
wp option delete 'jobboard_forget_email'
wp option delete 'admin_email_jobboard'
wp option delete 'jobboard_order_client_email_sub'
wp option delete 'jobboard_order_client_email'
wp option delete 'jobboard_order_admin_email_sub'
wp option delete 'jobboard_order_admin_email'
wp option delete 'jobboard_reminder_email_subject'
wp option delete 'jobboard_reminder_email'
wp option delete 'jobboard_reminder_day'
wp option delete 'jobboard_contact_email_subject'
wp option delete 'jobboard_contact_email'
wp option delete 'jobboard_apply_email_subject'
wp option delete 'jobboard_apply_email'
wp option delete 'jobboard_notification_email_subject'
wp option delete 'jobboard_notification_email'
wp option delete 'epjbjobboard_bcc_message'
wp option delete 'jobboard_mailchimp_api_key'
wp option delete 'jobboard_mailchimp_confirmation'
wp option delete 'jobboard_mailchimp_list'
wp option delete 'epjbdir_color'
wp option delete 'wp_admin_notifications'
wp option delete 'dir_style5_perpage'
wp option delete 'eppro_total_row'
wp option delete 'eppro_current_row'
wp option delete 'age_range'
wp option delete 'dirpro_web_button'
wp option delete '_jobboard_payment_coupon'
wp option delete 'jobboard_admin_email'
wp option delete 'jobboard_price-table'
wp option delete 'epjbdir_tags'
wp option delete 'finalerp-number-of-files'
wp option delete 'woocommerce_currency'
wp option delete 'jobboard_categories'
wp option delete 'jobboard_featured'
wp option delete 'job_top_1_icon'
wp option delete 'job_top_2_icon'
wp option delete 'job_top_3_icon'
wp option delete 'job_top_4_icon'
wp option delete 'dir_style5_call'
wp option delete 'dir_addedit_contactustitle'
wp option delete 'epjbjobboard_edit_resume'
wp option delete 'jobboard_candidate_applied'
wp option delete 'epjbfavorites'
wp option delete 'jobboard_dir_map'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'package_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'package_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'package_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'package_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_it_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_it_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_it_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_it_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'package_feature_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'package_feature_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'package_feature_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'package_feature_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'feature_icon_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'feature_icon_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'feature_icon_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'feature_icon_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_display_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_display_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_display_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_display_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_initial_expire_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_initial_expire_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_initial_expire_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_initial_expire_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_initial_expire_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_initial_expire_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_initial_expire_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_initial_expire_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eplugins_stripe_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eplugins_stripe_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eplugins_stripe_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eplugins_stripe_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring_cost_initial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring_cost_initial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring_cost_initial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring_cost_initial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring_cycle_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring_cycle_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring_cycle_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring_cycle_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring_cycle_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring_cycle_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring_cycle_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring_cycle_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring_cycle_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring_cycle_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring_cycle_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring_cycle_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_enable_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_enable_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_enable_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_enable_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_trial_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_trial_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_trial_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_trial_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_trial_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_trial_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_trial_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_trial_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_recurring_trial_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_recurring_trial_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_recurring_trial_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_recurring_trial_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_woocommerce_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_woocommerce_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_woocommerce_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_woocommerce_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_max_post_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_max_post_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_max_post_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_max_post_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_hide_exp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_hide_exp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_hide_exp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_hide_exp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_vip_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_vip_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_vip_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_vip_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_secret_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_secret_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_secret_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_secret_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_live_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_live_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_live_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_live_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_api_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_api_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_api_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_api_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_facilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_facilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_facilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_facilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_deal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_deal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_deal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_deal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_paypal_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_paypal_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_paypal_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_paypal_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_paypal_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_paypal_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_paypal_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_paypal_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_paypal_api_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_paypal_api_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_paypal_api_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_paypal_api_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_paypal_api_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_paypal_api_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_paypal_api_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_paypal_api_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_paypal_api_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_paypal_api_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_paypal_api_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_paypal_api_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_live_publishable_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_live_publishable_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_live_publishable_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_live_publishable_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_publishable_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_publishable_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_publishable_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_publishable_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_pac_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_pac_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_pac_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_pac_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_exprie_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_exprie_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_exprie_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_exprie_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_package_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_package_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_package_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_package_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'local-area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'local-area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'local-area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'local-area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact-email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_web'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_web'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_web'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_web'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_contact_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_contact_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_contact_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_contact_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vacancy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vacancy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vacancy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vacancy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'experience_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'experience_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'experience_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'experience_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'educational_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'educational_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'educational_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'educational_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_education'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_education'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_education'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_education'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_must_have'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_must_have'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_must_have'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_must_have'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other_benefits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other_benefits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other_benefits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other_benefits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_gallery_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_gallery_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_gallery_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_gallery_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apply_jod_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apply_jod_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apply_jod_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apply_jod_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cv_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cv_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cv_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cv_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_approve'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_approve'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_approve'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_approve'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'age_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'age_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'age_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'age_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'workplace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'workplace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'workplace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'workplace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_gallery_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_gallery_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_gallery_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_gallery_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dirpro_web_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dirpro_web_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dirpro_web_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dirpro_web_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dirpro_email_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dirpro_email_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dirpro_email_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dirpro_email_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exprie_send_email_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exprie_send_email_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exprie_send_email_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exprie_send_email_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iv_paypal_recurring_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iv_paypal_recurring_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iv_paypal_recurring_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iv_paypal_recurring_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_cust_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_cust_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_cust_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_cust_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_stripe_subscrip_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_stripe_subscrip_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_stripe_subscrip_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_stripe_subscrip_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'p_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'p_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'p_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'p_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iv_profile_pic_thum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iv_profile_pic_thum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iv_profile_pic_thum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iv_profile_pic_thum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard-tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard-tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard-tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard-tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard-category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard-category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard-category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard-category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_apply_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_apply_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_apply_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_apply_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iv_cancel_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iv_cancel_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iv_cancel_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iv_cancel_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coverletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coverletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coverletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coverletter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'educationtitle%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'educationtitle%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'educationtitle%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'educationtitle%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'edustartdate%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'edustartdate%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'edustartdate%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'edustartdate%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'eduenddate%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'eduenddate%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'eduenddate%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'eduenddate%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'institute%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'institute%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'institute%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'institute%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'edudescription%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'edudescription%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'edudescription%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'edudescription%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'experience_title%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'experience_title%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'experience_title%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'experience_title%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'experience_start%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'experience_start%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'experience_start%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'experience_start%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'experience_end%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'experience_end%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'experience_end%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'experience_end%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'experience_company%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'experience_company%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'experience_company%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'experience_company%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'experience_description%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'experience_description%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'experience_description%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'experience_description%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'award_title%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'award_title%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'award_title%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'award_title%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'award_year%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'award_year%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'award_year%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'award_year%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'award_description%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'award_description%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'award_description%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'award_description%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'language%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'language%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'language%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'language%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'language_level%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'language_level%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'language_level%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'language_level%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'professional_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'professional_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'professional_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'professional_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iv_profile_pic_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iv_profile_pic_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iv_profile_pic_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iv_profile_pic_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_coupon_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_coupon_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_coupon_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_coupon_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dir_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dir_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dir_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dir_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_schedule_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_schedule_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_schedule_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_schedule_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_schedule_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_schedule_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_schedule_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_schedule_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_shortlisted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_shortlisted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_shortlisted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_shortlisted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_profilebookmark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_profilebookmark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_profilebookmark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_profilebookmark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_employerbookmark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_employerbookmark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_employerbookmark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_employerbookmark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_reject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_reject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_reject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_reject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jobboard_package_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jobboard_package_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jobboard_package_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jobboard_package_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'web_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'web_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'web_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'web_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dirpro_call_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dirpro_call_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dirpro_call_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dirpro_call_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'report_for_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'report_for_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'report_for_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'report_for_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qualification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qualification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qualification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qualification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hourly_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hourly_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hourly_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hourly_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dir_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dir_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dir_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dir_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_exprie_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_exprie_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_exprie_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_exprie_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whatsapp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whatsapp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whatsapp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whatsapp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'educationtitle1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'educationtitle1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'educationtitle1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'educationtitle1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'experience_title1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'experience_title1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'experience_title1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'experience_title1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'award_title1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'award_title1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'award_title1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'award_title1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language0'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language0'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language0'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language0'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobboard_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobboard_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobboard_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobboard_content'"
