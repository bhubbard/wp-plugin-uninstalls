-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdlw_settings', 'tdlw_todo_lists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tdlw_todo_lists');
DELETE FROM wp_usermeta WHERE meta_key IN ('tdlw_todo_lists');
DELETE FROM wp_termmeta WHERE meta_key IN ('tdlw_todo_lists');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tdlw_todo_lists');

