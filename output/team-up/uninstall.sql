-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_team_up_accent_color', '_team_up_page_slug', '_team_up_page_title', '_team_up_force_genesis_full_width', '_team_up_hide_department', '_team_up_square_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_team_up_break_after', '_team_up_member_order', 'edit_team-up_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_team_up_break_after', '_team_up_member_order', 'edit_team-up_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_team_up_break_after', '_team_up_member_order', 'edit_team-up_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_team_up_break_after', '_team_up_member_order', 'edit_team-up_per_page');

