-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nd_p_mytext', 'nd_m_p_collect', 'table_title', 'nd_btn_text', 'mytext', 'aw_custom_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('nd_p_mytext', 'nd_m_p_collect', 'table_title', 'nd_btn_text', 'mytext', 'aw_custom_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('nd_p_mytext', 'nd_m_p_collect', 'table_title', 'nd_btn_text', 'mytext', 'aw_custom_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nd_p_mytext', 'nd_m_p_collect', 'table_title', 'nd_btn_text', 'mytext', 'aw_custom_image');

