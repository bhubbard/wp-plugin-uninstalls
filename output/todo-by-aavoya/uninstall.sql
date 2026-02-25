-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptba_aau', 'wptba_autoLogOutDuration', 'wptba_encryption_key', 'wptba_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wptba_user_post_meta', 'wp_todo_board_meta', 'wptba_user_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('wptba_user_post_meta', 'wp_todo_board_meta', 'wptba_user_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('wptba_user_post_meta', 'wp_todo_board_meta', 'wptba_user_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wptba_user_post_meta', 'wp_todo_board_meta', 'wptba_user_meta');

