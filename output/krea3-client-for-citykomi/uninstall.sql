-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('krea3_citykomi_client_settings', 'classic-editor-replace', 'classic-editor-allow-users', 'krea3_citykomi_canaux', '_krea3citykomi_messages_display');
DELETE FROM wp_options WHERE option_name LIKE 'krea3_citykomi_messages_%';
DELETE FROM wp_options WHERE option_name LIKE '_krea3citykomi_msg_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('citykomi_start_at', 'citykomi_send_at', 'citykomi_end_at', 'citykomi', 'citykomi_document', 'citykomi_show_en_at', 'citykomi_date_publication', 'citykomi_masquer_date_fin', 'citykomi_id_channel', 'citykomi_expiration', 'citykomi_response', 'citykomi_id_message', 'citykomi_start_at_utc', 'citykomi_end_at_utc', 'citykomi_send_at_utc', 'citykomi_wp_document');
DELETE FROM wp_usermeta WHERE meta_key IN ('citykomi_start_at', 'citykomi_send_at', 'citykomi_end_at', 'citykomi', 'citykomi_document', 'citykomi_show_en_at', 'citykomi_date_publication', 'citykomi_masquer_date_fin', 'citykomi_id_channel', 'citykomi_expiration', 'citykomi_response', 'citykomi_id_message', 'citykomi_start_at_utc', 'citykomi_end_at_utc', 'citykomi_send_at_utc', 'citykomi_wp_document');
DELETE FROM wp_termmeta WHERE meta_key IN ('citykomi_start_at', 'citykomi_send_at', 'citykomi_end_at', 'citykomi', 'citykomi_document', 'citykomi_show_en_at', 'citykomi_date_publication', 'citykomi_masquer_date_fin', 'citykomi_id_channel', 'citykomi_expiration', 'citykomi_response', 'citykomi_id_message', 'citykomi_start_at_utc', 'citykomi_end_at_utc', 'citykomi_send_at_utc', 'citykomi_wp_document');
DELETE FROM wp_commentmeta WHERE meta_key IN ('citykomi_start_at', 'citykomi_send_at', 'citykomi_end_at', 'citykomi', 'citykomi_document', 'citykomi_show_en_at', 'citykomi_date_publication', 'citykomi_masquer_date_fin', 'citykomi_id_channel', 'citykomi_expiration', 'citykomi_response', 'citykomi_id_message', 'citykomi_start_at_utc', 'citykomi_end_at_utc', 'citykomi_send_at_utc', 'citykomi_wp_document');

