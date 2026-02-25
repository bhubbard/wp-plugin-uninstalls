#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_autourls'
wp option delete 'ms_files_rewriting'
wp option delete 'widget_spf'
wp option delete 'widget_sforum'
wp option delete 'sfInstallID'
wp option delete 'sp_storage1'
wp option delete 'sp_storage2'

# Delete Transients
wp transient delete 'sp_update_plugins'
wp transient delete 'sp_update_themes'

# Clear Cron Jobs
wp cron event delete 'sph_stats_cron'
wp cron event delete 'sph_cron_user'
wp cron event delete 'sph_transient_cleanup_cron'
wp cron event delete 'sph_news_cron'
wp cron event delete 'sph_check_addons_status_interval'
wp cron event delete 'spf_cron_pm'
wp cron event delete 'spf_cron_sitemap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_change_pw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_change_pw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_change_pw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_change_pw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myspace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myspace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myspace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myspace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photos'"
