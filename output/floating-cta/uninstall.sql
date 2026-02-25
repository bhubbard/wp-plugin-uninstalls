-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('floact_enable', 'floact_button_text', 'floact_sub_text', 'floact_url', 'floact_position', 'floact_opacity', 'floact_button_color', 'floact_click_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('floact_enable', 'floact_button_text', 'floact_sub_text', 'floact_url', 'floact_position', 'floact_opacity', 'floact_button_color', 'floact_click_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('floact_enable', 'floact_button_text', 'floact_sub_text', 'floact_url', 'floact_position', 'floact_opacity', 'floact_button_color', 'floact_click_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('floact_enable', 'floact_button_text', 'floact_sub_text', 'floact_url', 'floact_position', 'floact_opacity', 'floact_button_color', 'floact_click_count');

