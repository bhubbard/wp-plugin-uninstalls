-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manceppo_campaign', '_manceppo_download', '_manceppo_newsletters', '_manceppo_thanks_body', '_manceppo_submit_button_color', '_manceppo_submit_button_title', '_manceppo_submit_button_text_color', '_manceppo_message_field_height', '_manceppo_message_field_width', '_manceppo_message_field_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manceppo_campaign', '_manceppo_download', '_manceppo_newsletters', '_manceppo_thanks_body', '_manceppo_submit_button_color', '_manceppo_submit_button_title', '_manceppo_submit_button_text_color', '_manceppo_message_field_height', '_manceppo_message_field_width', '_manceppo_message_field_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manceppo_campaign', '_manceppo_download', '_manceppo_newsletters', '_manceppo_thanks_body', '_manceppo_submit_button_color', '_manceppo_submit_button_title', '_manceppo_submit_button_text_color', '_manceppo_message_field_height', '_manceppo_message_field_width', '_manceppo_message_field_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manceppo_campaign', '_manceppo_download', '_manceppo_newsletters', '_manceppo_thanks_body', '_manceppo_submit_button_color', '_manceppo_submit_button_title', '_manceppo_submit_button_text_color', '_manceppo_message_field_height', '_manceppo_message_field_width', '_manceppo_message_field_label');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_manceppo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_manceppo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_manceppo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_manceppo_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_manceppo_space_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_manceppo_space_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_manceppo_space_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_manceppo_space_%';

