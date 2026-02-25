#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdlsa_bad_words_list'
wp option delete 'hdlsa_agora_app_id'
wp option delete 'hdlsa_agora_app_certificate'
wp option delete 'hdlsa_agora_customer_id'
wp option delete 'hdlsa_agora_customer_secret'
wp option delete 'hdlsa_agora_project_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_host_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_host_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_host_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_host_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_host_avatar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_host_avatar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_host_avatar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_host_avatar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_chat_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_chat_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_chat_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_chat_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_stream_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_stream_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_stream_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_stream_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_stream_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_stream_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_stream_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_stream_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_total_viewers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_total_viewers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_total_viewers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_total_viewers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_peak_viewers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_peak_viewers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_peak_viewers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_peak_viewers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_viewer_sessions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_viewer_sessions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_viewer_sessions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_viewer_sessions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hdlsa_selected_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hdlsa_selected_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hdlsa_selected_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hdlsa_selected_products'"
