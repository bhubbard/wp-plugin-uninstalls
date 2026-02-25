#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pg_inline_css'
wp option delete 'pg_abfa_attempts'
wp option delete 'pg_wp_user_sync'
wp option delete 'pg_require_wps_registration'
wp option delete 'pg_allow_duplicated_mails'
wp option delete 'pg_onlymail_registr'
wp option delete 'pg_use_first_last_name'
wp option delete 'pg_reg_cat_label'
wp option delete 'pg_reg_multiple_cats'
wp option delete 'pg_reg_cat_placeh'
wp option delete 'pg_name_placeh'
wp option delete 'pg_name_icon'
wp option delete 'pg_surname_placeh'
wp option delete 'pg_surname_icon'
wp option delete 'pg_username_placeh'
wp option delete 'pg_username_icon'
wp option delete 'pg_psw_min_length'
wp option delete 'pg_psw_placeh'
wp option delete 'pg_psw_icon'
wp option delete 'pg_show_psw_helper'
wp option delete 'pg_categories_placeh'
wp option delete 'pg_categories_icon'
wp option delete 'pg_email_placeh'
wp option delete 'pg_email_icon'
wp option delete 'pg_tel_placeh'
wp option delete 'pg_tel_icon'
wp option delete 'pg_disclaimer_txt'
wp option delete 'pg_forms_pags_progress'
wp option delete 'pg_no_html5_validation'
wp option delete 'pg_single_psw_f_w_reveal'
wp option delete 'pg_repeat_psw_icon'
wp option delete 'pg_repeat_psw_placeh'
wp option delete 'pg_psw_strength'
wp option delete 'pg_no_cookie_login'
wp option delete 'pg_extend_cpt'
wp option delete 'pg_extend_ct'
wp option delete 'pc_dynamic_scripts_id'
wp option delete 'pg_forms_bg_col'
wp option delete 'pg_min_role'
wp option delete 'pg_users_tup'
wp option delete 'pg_min_role_tmu'
wp option delete 'pg_any_pc_admin_cmu'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pg_cats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pg_redirect'"
wp option delete 'pg_pvtpage_default_content'
wp option delete 'pg_custom_wps_roles'
wp option delete 'pg_tu_can_edit_user_cats'
wp option delete 'pg_pvtpage_overriding_method'
wp option delete 'pg_target_page'
wp option delete 'pg_forms_shadow'
wp option delete 'pg_forms_shadow_col'
wp option delete 'pg_messages_style'
wp option delete 'pg_separator_margin'
wp option delete 'pg_fields_font_size_type'
wp option delete 'pg_labels_font_size_type'
wp option delete 'pg_forms_font_family'
wp option delete 'pg_btns_font_size_type'
wp option delete 'pg_custom_css'
wp option delete 'pg_db_version'
wp option delete 'pg_registration_form'
wp option delete 'pg_js_inline_login'
wp option delete 'pg_warn_box_login'
wp option delete 'pg_no_front_nonce'
wp option delete 'pg_antispam_sys'
wp option delete 'pg_use_disclaimer'
wp option delete 'pg_registered_pending'
wp option delete 'pg_registration_cat'
wp option delete 'pg_registered_pvtpage'
wp option delete 'pg_autologin_registered'
wp option delete 'pg_redirect_back_after_login'
wp option delete 'pg_disable_front_css'
wp option delete 'pg_style'
wp option delete 'pcf_welcome_dismissed'
wp option delete 'pg_use_remember_me'
wp option delete 'pg_allow_email_login'
wp option delete 'pg_fullw_login_fields'
wp option delete 'pg_nolabel'
wp option delete 'pg_login_btn_icon'
wp option delete 'pg_fullw_login_btn'
wp option delete 'pg_recaptcha_public'
wp option delete 'pg_logout_btn_icon'
wp option delete 'pg_use_session_token'
wp option delete 'pg_reg_layout'
wp option delete 'pg_register_btn_icon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom'"
wp option delete 'pg_do_not_use_pcac'
wp option delete 'pg_fluid_form_threshold'
wp option delete 'pg_hide_reg_btn_on_success'
wp option delete 'pg_bottomborder'
wp option delete 'pg_user_del_btn_icon'
wp option delete 'pg_warn_box_registr'
wp option delete 'pg_htaccess_cred'
wp option delete 'pg_target_page_content'
wp option delete 'pg_pvtpage_wps_comments'
wp option delete 'pg_pvtpage_enable_preset'
wp option delete 'pg_pvtpage_preset_pos'
wp option delete 'pg_logout_user_redirect'
wp option delete 'wp_to_pc_sync_on_register'
wp option delete 'wp_to_pc_sync_on_register_roles'
wp option delete 'wp_to_pc_sync_on_register_cats'
wp option delete 'pg_redirect_page'
wp option delete 'pg_complete_lock'
wp option delete 'pg_complete_lock_excluded_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_placeh'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp option delete 'pg_field_padding'

# Delete Transients
wp transient delete 'pc_abfa_db'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dismissed' OR option_name LIKE '_site_transient_%_dismissed'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_ulist_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_ulist_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_ulist_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_ulist_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_ucat_manag_by_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_ucat_manag_by_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_ucat_manag_by_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_ucat_manag_by_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_restrictions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_restrictions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_restrictions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_restrictions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_restrictions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_restrictions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_restrictions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_restrictions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_hide_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_hide_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_hide_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_hide_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_ucat_no_registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_ucat_no_registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_ucat_no_registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_ucat_no_registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_pg_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_pg_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_pg_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_pg_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_restr_preview_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_restr_preview_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_restr_preview_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_restr_preview_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_pvt_page_full_override_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_pvt_page_full_override_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_pvt_page_full_override_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_pvt_page_full_override_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_ucat_login_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_ucat_login_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_ucat_login_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_ucat_login_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pg_ucat_registr_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pg_ucat_registr_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pg_ucat_registr_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pg_ucat_registr_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_ulist_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_ulist_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_ulist_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_ulist_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_lb_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_lb_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_lb_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_lb_preload'"
