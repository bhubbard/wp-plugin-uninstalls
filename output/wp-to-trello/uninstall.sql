-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharingTrello_key', 'sharingTrello_token', 'sharingTrello_board_id_sentaku', 'sharingTrello_post_board_list_id', 'sharingTrello_post_label_list_id');
DELETE FROM wp_options WHERE option_name LIKE '%_board_list_id';
DELETE FROM wp_options WHERE option_name LIKE '%_label_list_id';
DELETE FROM wp_options WHERE option_name LIKE 'sharingTrello_%';
DELETE FROM wp_options WHERE option_name LIKE 'sharingTrello_post_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trello_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('trello_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('trello_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trello_id');

