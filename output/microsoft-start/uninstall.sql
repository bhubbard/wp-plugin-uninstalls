-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace');
DELETE FROM wp_options WHERE option_name LIKE 'msn_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('msn_id', 'MSN_Publish_Option', 'MSN_Add_Feature_Img_On_Top_Of_Post', 'MSN_Categories', 'MSN_Is_Local_News', 'MSN_Is_AIAC_Included', 'MSN_Location', 'MSN_Has_Custom_Author', 'MSN_Custom_Author', 'MSN_Has_Custom_Canonical_Url', 'MSN_Custom_Canonical_Url');
DELETE FROM wp_usermeta WHERE meta_key IN ('msn_id', 'MSN_Publish_Option', 'MSN_Add_Feature_Img_On_Top_Of_Post', 'MSN_Categories', 'MSN_Is_Local_News', 'MSN_Is_AIAC_Included', 'MSN_Location', 'MSN_Has_Custom_Author', 'MSN_Custom_Author', 'MSN_Has_Custom_Canonical_Url', 'MSN_Custom_Canonical_Url');
DELETE FROM wp_termmeta WHERE meta_key IN ('msn_id', 'MSN_Publish_Option', 'MSN_Add_Feature_Img_On_Top_Of_Post', 'MSN_Categories', 'MSN_Is_Local_News', 'MSN_Is_AIAC_Included', 'MSN_Location', 'MSN_Has_Custom_Author', 'MSN_Custom_Author', 'MSN_Has_Custom_Canonical_Url', 'MSN_Custom_Canonical_Url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('msn_id', 'MSN_Publish_Option', 'MSN_Add_Feature_Img_On_Top_Of_Post', 'MSN_Categories', 'MSN_Is_Local_News', 'MSN_Is_AIAC_Included', 'MSN_Location', 'MSN_Has_Custom_Author', 'MSN_Custom_Author', 'MSN_Has_Custom_Canonical_Url', 'MSN_Custom_Canonical_Url');

