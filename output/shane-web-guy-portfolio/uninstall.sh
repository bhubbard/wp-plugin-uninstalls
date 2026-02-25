#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swgpreviewBackgroundColor'
wp option delete 'swgpBtnTextAlign'
wp option delete 'swgpBtnFontSize'
wp option delete 'swgpBtnBackgroundColor'
wp option delete 'swgpBtnFontColor'
wp option delete 'swgPreviewTextFontColor'
wp option delete 'swgp_upload_image'
wp option delete 'swgpreviewPadding'
wp option delete 'swgp_follow'
wp option delete 'swgPreviewTextTitleLabel'
wp option delete 'swgPreviewTextTagLabel'
wp option delete 'swgPreviewTextDescriptionLabel'
wp option delete 'swgPreviewTextPadding'
wp option delete 'swgPreviewTextFontSize'
wp option delete 'swgPreviewTextTitleAlign'
wp option delete 'swgPreviewTextTitleWeight'
wp option delete 'swgpBtnTitle'
wp option delete 'swgPreviewTextFontWeight'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swg_info_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swg_info_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swg_info_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swg_info_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swg_info_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swg_info_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swg_info_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swg_info_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swg_info_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swg_info_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swg_info_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swg_info_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swg_info_no_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swg_info_no_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swg_info_no_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swg_info_no_follow'"
