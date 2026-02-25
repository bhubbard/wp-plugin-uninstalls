-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('desktop_columns', 'tablet_columns', 'mobile_columns', 'delay_time', 'show_buttons', 'auto_play', 'infinite_loop');
DELETE FROM wp_usermeta WHERE meta_key IN ('desktop_columns', 'tablet_columns', 'mobile_columns', 'delay_time', 'show_buttons', 'auto_play', 'infinite_loop');
DELETE FROM wp_termmeta WHERE meta_key IN ('desktop_columns', 'tablet_columns', 'mobile_columns', 'delay_time', 'show_buttons', 'auto_play', 'infinite_loop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('desktop_columns', 'tablet_columns', 'mobile_columns', 'delay_time', 'show_buttons', 'auto_play', 'infinite_loop');

