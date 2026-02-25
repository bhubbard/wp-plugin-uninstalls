#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w3all_url_to_cms'
wp option delete 'w3all_phpbb_dbconn'
wp option delete 'w3all_path_to_cms'
wp option delete 'w3all_pass_hash_way'
wp option delete 'w3all_not_link_phpbb_wp'
wp option delete 'w3all_conf_avatars'
wp option delete 'w3all_conf_pref'
wp option delete 'w3all_conf_pref_template_embed_link'
wp option delete 'w3all_bruteblock_phpbbulist'
wp option delete 'w3all_forum_template_wppage'
wp option delete 'w3all_phpbb_cookie'
wp option delete 'widget_wp_w3all_widget_login'
wp option delete 'widget_wp_w3all_widget_last_topics'
wp option delete 'widget_wp_w3all_widget_phpbb_onlinestats'
wp option delete 'w3all_exclude_id1'
wp option delete 'w3all_iframe_phpbb_link_yn'
wp option delete 'w3all_u_signups_data'
wp option delete 'widget_wp_w3all_widget_phpbb_mchat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3all_wpdelete_phpbbulist_delby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3all_wpdelete_phpbbulist_delby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3all_wpdelete_phpbbulist_delby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3all_wpdelete_phpbbulist_delby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
