-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_admintab_show', 'pp_clientuser_adminaccess', 'pp_clientuser_dashpage', 'pp_set_logout_url', 'pp_regfields_list', 'pp_contactfields_list', 'pp_contactemail_subject', 'pp_contactemail_mailto', 'pp_contactemail_msg', 'pp_icon_menu_item', 'pp_my_theme_has_bootstrap', 'pp_chosen_form_style', 'pp_formtoken', 'pp_ppprofile', 'pp_pplogin', 'pp_pppasswordrecovery');
DELETE FROM wp_options WHERE option_name LIKE 'pp_%';

