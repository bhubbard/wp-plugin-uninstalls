-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_dl_widget', 'wphyves_scraps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hyves_added_post', 'hyves_post_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('hyves_added_post', 'hyves_post_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('hyves_added_post', 'hyves_post_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hyves_added_post', 'hyves_post_url');

