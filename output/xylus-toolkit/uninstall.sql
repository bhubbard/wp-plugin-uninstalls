-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_link', 'slider_button_text', 'slider_button_link', 'team_position', 'author_name', 'author_position', 'author_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_link', 'slider_button_text', 'slider_button_link', 'team_position', 'author_name', 'author_position', 'author_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_link', 'slider_button_text', 'slider_button_link', 'team_position', 'author_name', 'author_position', 'author_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_link', 'slider_button_text', 'slider_button_link', 'team_position', 'author_name', 'author_position', 'author_company');

