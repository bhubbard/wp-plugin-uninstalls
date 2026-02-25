-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('game_information_authors', 'game_information_link', 'game_information_website', 'game_information_flag_dev');
DELETE FROM wp_usermeta WHERE meta_key IN ('game_information_authors', 'game_information_link', 'game_information_website', 'game_information_flag_dev');
DELETE FROM wp_termmeta WHERE meta_key IN ('game_information_authors', 'game_information_link', 'game_information_website', 'game_information_flag_dev');
DELETE FROM wp_commentmeta WHERE meta_key IN ('game_information_authors', 'game_information_link', 'game_information_website', 'game_information_flag_dev');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'game_information_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'game_information_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'game_information_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'game_information_%';

