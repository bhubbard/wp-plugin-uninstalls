-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swgpreviewBackgroundColor', 'swgpBtnTextAlign', 'swgpBtnFontSize', 'swgpBtnBackgroundColor', 'swgpBtnFontColor', 'swgPreviewTextFontColor', 'swgp_upload_image', 'swgpreviewPadding', 'swgp_follow', 'swgPreviewTextTitleLabel', 'swgPreviewTextTagLabel', 'swgPreviewTextDescriptionLabel', 'swgPreviewTextPadding', 'swgPreviewTextFontSize', 'swgPreviewTextTitleAlign', 'swgPreviewTextTitleWeight', 'swgpBtnTitle', 'swgPreviewTextFontWeight');
DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swg_info_description', 'swg_info_url', 'swg_info_keywords', 'swg_info_no_follow');
DELETE FROM wp_usermeta WHERE meta_key IN ('swg_info_description', 'swg_info_url', 'swg_info_keywords', 'swg_info_no_follow');
DELETE FROM wp_termmeta WHERE meta_key IN ('swg_info_description', 'swg_info_url', 'swg_info_keywords', 'swg_info_no_follow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swg_info_description', 'swg_info_url', 'swg_info_keywords', 'swg_info_no_follow');

