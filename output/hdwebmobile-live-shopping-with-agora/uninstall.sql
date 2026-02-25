-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hdlsa_bad_words_list', 'hdlsa_agora_app_id', 'hdlsa_agora_app_certificate', 'hdlsa_agora_customer_id', 'hdlsa_agora_customer_secret', 'hdlsa_agora_project_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hdlsa_host_name', '_hdlsa_host_avatar_id', '_hdlsa_chat_history', '_hdlsa_stream_start_time', '_hdlsa_stream_end_time', '_hdlsa_total_viewers', '_hdlsa_peak_viewers', '_hdlsa_viewer_sessions', '_hdlsa_selected_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hdlsa_host_name', '_hdlsa_host_avatar_id', '_hdlsa_chat_history', '_hdlsa_stream_start_time', '_hdlsa_stream_end_time', '_hdlsa_total_viewers', '_hdlsa_peak_viewers', '_hdlsa_viewer_sessions', '_hdlsa_selected_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hdlsa_host_name', '_hdlsa_host_avatar_id', '_hdlsa_chat_history', '_hdlsa_stream_start_time', '_hdlsa_stream_end_time', '_hdlsa_total_viewers', '_hdlsa_peak_viewers', '_hdlsa_viewer_sessions', '_hdlsa_selected_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hdlsa_host_name', '_hdlsa_host_avatar_id', '_hdlsa_chat_history', '_hdlsa_stream_start_time', '_hdlsa_stream_end_time', '_hdlsa_total_viewers', '_hdlsa_peak_viewers', '_hdlsa_viewer_sessions', '_hdlsa_selected_products');

