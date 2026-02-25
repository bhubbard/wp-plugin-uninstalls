-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atheaico_options', 'atheaico_activation_date', 'atheaico_review_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atheaico_chat_topics', '_wp_attachment_image_alt', '_atheaico_generation_history');
DELETE FROM wp_usermeta WHERE meta_key IN ('atheaico_chat_topics', '_wp_attachment_image_alt', '_atheaico_generation_history');
DELETE FROM wp_termmeta WHERE meta_key IN ('atheaico_chat_topics', '_wp_attachment_image_alt', '_atheaico_generation_history');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atheaico_chat_topics', '_wp_attachment_image_alt', '_atheaico_generation_history');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atheaico_chat_messages_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atheaico_chat_messages_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atheaico_chat_messages_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atheaico_chat_messages_%';

