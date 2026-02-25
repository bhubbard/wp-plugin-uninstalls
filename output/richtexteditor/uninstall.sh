#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RTE_ContentCss'
wp option delete 'RTE_EditorBodyStyle'
wp option delete 'RTE_GalleryPath'
wp option delete 'RTE_VideoPath'
wp option delete 'RTE_DocumentPath'
wp option delete 'RTE_TemplatePath'
wp option delete 'RTE_TextDirection'
wp option delete 'RTE_Admin_Width'
wp option delete 'RTE_Admin_Height'
wp option delete 'RTE_Site_Width'
wp option delete 'RTE_Site_Height'
wp option delete 'RTE_Admin_Skin'
wp option delete 'RTE_Admin_Toolbar'
wp option delete 'RTE_Site_UseRTE'
wp option delete 'RTE_Site_Skin'
wp option delete 'RTE_Site_Toolbar'
wp option delete 'RTE_Language'
wp option delete 'RTE_EnterKeyTag'
wp option delete 'RTE_UrlType'
wp option delete 'default_post_edit_rows'

