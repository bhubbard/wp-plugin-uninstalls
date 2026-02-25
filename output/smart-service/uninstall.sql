-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smart_icon', 'learn_more_text', 'learn_more_link', 'service_bg_c', 'service_icon_c', 'service_head_c', 'service_body_c', 'service_link_c', 'wordn');
DELETE FROM wp_usermeta WHERE meta_key IN ('smart_icon', 'learn_more_text', 'learn_more_link', 'service_bg_c', 'service_icon_c', 'service_head_c', 'service_body_c', 'service_link_c', 'wordn');
DELETE FROM wp_termmeta WHERE meta_key IN ('smart_icon', 'learn_more_text', 'learn_more_link', 'service_bg_c', 'service_icon_c', 'service_head_c', 'service_body_c', 'service_link_c', 'wordn');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smart_icon', 'learn_more_text', 'learn_more_link', 'service_bg_c', 'service_icon_c', 'service_head_c', 'service_body_c', 'service_link_c', 'wordn');

