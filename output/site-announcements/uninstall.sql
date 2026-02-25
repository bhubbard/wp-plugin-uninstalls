-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cw_announcement_url', 'cw_background_color', 'cw_announcement_closable', 'cw_announcement_closable_duration', 'cw_text_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('cw_announcement_url', 'cw_background_color', 'cw_announcement_closable', 'cw_announcement_closable_duration', 'cw_text_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('cw_announcement_url', 'cw_background_color', 'cw_announcement_closable', 'cw_announcement_closable_duration', 'cw_text_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cw_announcement_url', 'cw_background_color', 'cw_announcement_closable', 'cw_announcement_closable_duration', 'cw_text_color');

