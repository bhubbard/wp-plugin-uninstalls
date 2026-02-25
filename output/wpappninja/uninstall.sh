#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpappninja_progressive_app'
wp option delete 'wpappninja_app_published'
wp option delete 'wpappninja_disable_autopush'
wp option delete 'wpappninja_pem_file'
wp option delete 'wpmobile_firebase_config'
wp option delete 'wpappninja_packagenameInt'
wp option delete 'wpappninja_google_json'
wp option delete 'wpappninja_primary'
wp option delete 'wpappninja_secondary'
wp option delete 'wpappninja_follow_tuto'
wp option delete 'wpappninja_need_update'
wp option delete 'wpappninja_pwa_home'
wp option delete 'wpmobileapp_disable_stats'
wp option delete 'wpappninja_stats_box'
wp option delete 'current_theme'
wp option delete 'wpappninja_backup'
wp option delete 'wpappninjaadminnoticeupdatedwv'
wp option delete 'wpappninja_nb_downloads'
wp option delete 'wpappninja_android_deeplinking'
wp option delete 'wpappninja_start_premium_feature'
wp option delete 'wpmobile_enable_new_fcm'
wp option delete 'wpappninja_admob_b'
wp option delete 'wpappninja_admob_float'
wp option delete 'wpappninja_admob_splash'
wp option delete 'wpappninja_admob_t'
wp option delete 'wpappninja_afterpost'
wp option delete 'wpappninja_apipush'
wp option delete 'wpappninja_autopush'
wp option delete 'wpappninja_beforepost'
wp option delete 'wpappninja_bienvenue'
wp option delete 'wpappninja_bio'
wp option delete 'wpappninja_commentaire'
wp option delete 'wpappninja_configureok'
wp option delete 'wpappninja_datetype'
wp option delete 'wpappninja_defautimg'
wp option delete 'wpappninja_disclameeer'
wp option delete 'wpappninja_excluded'
wp option delete 'wpappninja_ga'
wp option delete 'wpappninja_iconmenui'
wp option delete 'wpappninja_maxage'
wp option delete 'wpappninja_mentions'
wp option delete 'wpappninja_menu'
wp option delete 'wpappninja_menuorder'
wp option delete 'wpappninja_nbsimilar'
wp option delete 'wpappninja_package'
wp option delete 'wpappninja_pageashome'
wp option delete 'wpappninja_pageashomeicon'
wp option delete 'wpappninja_pageashometitle'
wp option delete 'wpappninja_project'
wp option delete 'wpappninja_rating_seuil'
wp option delete 'wpappninja_rating_texte'
wp option delete 'wpappninja_rating_titre'
wp option delete 'wpappninja_share'
wp option delete 'wpappninja_showdate'
wp option delete 'wpappninja_silent'
wp option delete 'wpappninja_similaire'
wp option delete 'wpappninja_similarnb'
wp option delete 'wpappninja_similartype'
wp option delete 'wpappninja_theme'
wp option delete 'wpappninja_typedevue'
wp option delete 'wpappninja_welcome'
wp option delete 'wpappninja_welcome_titre'
wp option delete 'wpappninja_old_ios_deeplinking'
wp option delete 'wpmobile_auto_push_sent'
wp option delete 'geodir_detail_sidebar_left_section'
wp option delete 'wpappninja_off_apple'
wp option delete 'wpappninja_store_ready'
wp option delete 'wpappninja_bypass_notif'
wp option delete 'wpappninja_042018'
wp option delete 'wpappninja'
wp option delete 'wpappninja_pwa'
wp option delete 'wpappninja_pwa_menu'

# Delete Transients
wp transient delete 'wpmobile_hide_alerts'
wp transient delete 'wpmobile_sdk_alert'
wp transient delete 'is_wpappninja_ajax'
wp transient delete 'wpappninjaadminnoticeupdated'
wp transient delete 'wpmobileAndroidTopic'
wp transient delete 'wpmobile_push_slow_down'
wp transient delete 'wpappninjabotworking'
wp transient delete 'wpappninjaispaid'
wp transient delete 'wpappninja_package_check'

# Clear Cron Jobs
wp cron event delete 'wpappninjacron'
wp cron event delete 'sendnotificationspush'
wp cron event delete 'wpappninjacronnbinstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_sended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_arrayids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_arrayids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_arrayids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_arrayids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_senddate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_senddate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_senddate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_senddate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_send_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_send_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_send_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_send_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpappninja_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpappninja_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpappninja_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpappninja_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmobileapp_rateme_dismissed003'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmobileapp_rateme_dismissed003'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmobileapp_rateme_dismissed003'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmobileapp_rateme_dismissed003'"
