#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eeSFL_Confirm'
wp option delete 'eeSFL_FileList_1'
wp option delete 'eeSFL_FREE_DB_Version'
wp option delete 'eeSFL_BASE_Version'
wp option delete 'eeSFL-1-ShowList'
wp option delete 'eeSFL-Settings'
wp option delete 'eeSFL_Settings_1'
wp option delete 'eeSFL-1-ShowFileThumb'
wp option delete 'eeSFL-1-ShowFileDate'
wp option delete 'eeSFL-1-ShowFileOwner'
wp option delete 'eeSFL-1-ShowFileSize'
wp option delete 'eeSFL-1-SortBy'
wp option delete 'eeSFL-1-SortOrder'
wp option delete 'eeSFL-1-ShowFileActions'
wp option delete 'eeSFL-1-ShowListHeader'
wp option delete 'eeSFL-1-AllowFrontDelete'
wp option delete 'eeSFL-1-UploadDir'
wp option delete 'eeSFL-1-AllowUploads'
wp option delete 'eeSFL-1-FileFormats'
wp option delete 'eeSFL-1-UploadLimit'
wp option delete 'eeSFL-1-UploadMaxFileSize'
wp option delete 'eeSFL-1-GetUploaderInfo'
wp option delete 'eeSFL-1-Notify'
wp option delete 'eeSFL-FileList-1'
wp option delete 'eeSFL-Log'
wp option delete 'eeSFL_BASE_Log'
wp option delete 'eeSFL-Version'
wp option delete 'eeSFL-DB-Version'
wp option delete 'eeSFL_FREE_Log'
wp option delete 'eeSFLA-Settings'
wp option delete 'eeSFL-Legacy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eeSFL_Settings_%'"
wp option delete 'eeSFL_Supported'
wp option delete 'eeSFL_TheLog'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eeSFL_FileList_%'"
wp option delete 'eeSFL_Tasks'

# Delete Transients
wp transient delete 'eeSFL-1-FileListDirCheck'
wp transient delete 'eeSFL_FileList_1'
wp transient delete 'eeSFL_FileList-1'

