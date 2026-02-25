-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alba_board_limits', 'alba_board_uploads', 'alba_board_notifications', 'alba_delete_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alba_card_attachments', 'alba_comments', 'alba_tag_bg_color', 'alba_tag_text_color', 'alba_list_parent', 'alba_board_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('alba_card_attachments', 'alba_comments', 'alba_tag_bg_color', 'alba_tag_text_color', 'alba_list_parent', 'alba_board_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('alba_card_attachments', 'alba_comments', 'alba_tag_bg_color', 'alba_tag_text_color', 'alba_list_parent', 'alba_board_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alba_card_attachments', 'alba_comments', 'alba_tag_bg_color', 'alba_tag_text_color', 'alba_list_parent', 'alba_board_parent');

