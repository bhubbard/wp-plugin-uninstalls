-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thsab_remember_state', 'thsab_tab_position', 'thsab_tab_behavior', 'thsab_tab_background_color', 'thsab_tab_text_color', 'thsab_tab_persistence');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_admin_bar_front');

