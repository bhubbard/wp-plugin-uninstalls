#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_alerte'
wp option delete 'sm_license_key'
wp option delete 'sm_login'
wp option delete 'sm_alerte_email'
wp option delete 'sm_alerte_nl_cours'
wp option delete 'sm_alerte_nl_fin'
wp option delete 'sm_alerte_inscrit'
wp option delete 'sm_alerte_blacklist'
wp option delete 'sm_alerte_smtp'
wp option delete 'sm_alerte_stats'
wp option delete 'sm_license'
wp option delete 'sm_smtp_server'
wp option delete 'sm_smtp_authentification'
wp option delete 'sm_smtp_port'
wp option delete 'sm_smtp_login'
wp option delete 'sm_smtp_pass'
wp option delete 'sm_multi_nb'
wp option delete 'sm_location'
wp option delete 'sm_script_pause'
wp option delete 'sm_blacklist'
wp option delete 'sm_bounces'
wp option delete 'sm_from'
wp option delete 'sm_txt_haut'
wp option delete 'sm_affiche_txt_haut'
wp option delete 'sm_txt_bas'
wp option delete 'sm_txt_affiliation'
wp option delete 'sm_affiche_affiliation'
wp option delete 'sm_udp_bouton'
wp option delete 'sm_udp_details'
wp option delete 'sm_udp_merci'
wp option delete 'sm_udp_titre'
wp option delete 'sm_charset'
wp option delete 'sm_auto'
wp option delete 'sm_auto_id_liste'
wp option delete 'sm_post_id_auto'
wp option delete 'sm_debug'
wp option delete 'ah_tarif_credit'
wp option delete 'sm_email_exp'
wp option delete 'sm_smtp_server_1'
wp option delete 'sm_smtp_sender_1'
wp option delete 'sm_smtp_port_1'
wp option delete 'sm_smtp_authentification_1'
wp option delete 'sm_smtp_login_1'
wp option delete 'sm_smtp_pass_1'
wp option delete 'ah_curency1'
wp option delete 'sm_from_alert'
wp option delete 'sm_email_alert_exp'
wp option delete 'sm_email_alert_ret'
wp option delete 'sm_smtp_alert_server'
wp option delete 'sm_smtp_alert_port'
wp option delete 'sm_smtp_alert_authentification'
wp option delete 'sm_smtp_alert_login'
wp option delete 'sm_smtp_alert_pass'
wp option delete 'license_key'
wp option delete 'sm_email_exp_1'
wp option delete 'sm_email_ret_1'
wp option delete 'sm_npai_serveur_1'
wp option delete 'sm_npai_port_1'
wp option delete 'sm_npai_login_1'
wp option delete 'sm_npai_pass_1'
wp option delete 'sm-key'
wp option delete 'sm_tracking'
wp option delete 'sm_companyname'
wp option delete 'sm_companyadresse'
wp option delete 'sm_telephone'
wp option delete 'sm_fax'
wp option delete 'sm_link_facebook'
wp option delete 'sm_link_google'
wp option delete 'sm_link_twitter'
wp option delete 'sm_link_linkedin'
wp option delete 'sm_email_ret'
wp option delete 'AH_user_mailing'
wp option delete 'sm_version'
wp option delete 'sm_db_version'
wp option delete 'sm_type_envoi'
wp option delete 'sm_serveur'
wp option delete 'sm_domain'
wp option delete 'sm_affiche_txt_bas'
wp option delete 'sm_affiche_txt_affiliation'
wp option delete 'sm_smtp_user_login_stats'
wp option delete 'sm_smtp_user_id_stats'
wp option delete 'blogurl'
wp option delete 'sm_npai_serveur'
wp option delete 'sm_npai_port'
wp option delete 'sm_npai_login'
wp option delete 'sm_npai_pass'
wp option delete 'sm_from_1'
wp option delete 'sm_champs_nom'
wp option delete 'sm_auto_pause'
wp option delete 'sm_nbl'
wp option delete 'sm_nbm'
wp option delete 'sm_service_blacklist'
wp option delete 'sm_stats_smtp'
wp option delete 'sm_alias'
wp option delete 'sm_wiget_titre'
wp option delete 'sm_widget_demande_nom'
wp option delete 'sm_widget_demande_4'
wp option delete 'sm_widget_demande_5'
wp option delete 'sm_widget_demande_6'
wp option delete 'sm_widget_demande_7'
wp option delete 'sm_widget_demande_8'
wp option delete 'sm_widget_demande_9'
wp option delete 'sm_widget_demande_10'
wp option delete 'sm_widget_demande_11'
wp option delete 'sm_widget_demande_12'
wp option delete 'sm_post_id_auto2'
wp option delete 'blog_url'
wp option delete 'sm_alert_from'
wp option delete 'sm_alert_email_ret'
wp option delete 'ah_company_marque'
wp option delete 'ah_logo'
wp option delete 'sm_email_exp_2'
wp option delete 'sm_from_2'
wp option delete 'sm_smtp_server_2'
wp option delete 'sm_smtp_port_2'
wp option delete 'sm_smtp_authentification_2'
wp option delete 'sm_smtp_login_2'
wp option delete 'sm_smtp_pass_2'
wp option delete 'urlsite'
wp option delete 'email_admin'

# Clear Cron Jobs
wp cron event delete 'sm_crons'
wp cron event delete 'sm_crons15'
wp cron event delete 'sm_crons_heure1'
wp cron event delete 'sm_crons_heures4'
wp cron event delete 'sm_crons_jours1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_alerte_nl_cours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_alerte_nl_cours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_alerte_nl_cours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_alerte_nl_cours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_alerte_nl_fin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_alerte_nl_fin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_alerte_nl_fin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_alerte_nl_fin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_alerte_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_alerte_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_alerte_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_alerte_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_alerte_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_alerte_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_alerte_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_alerte_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_alerte_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_alerte_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_alerte_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_alerte_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_fromname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_fromname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_fromname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_fromname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_sender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_port'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_port'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_port'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_port'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_authentification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_authentification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_authentification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_authentification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_adresse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_adresse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_adresse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_adresse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_tel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_tel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_tel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_tel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_google'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smauto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smauto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smauto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smauto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_value_key'"
