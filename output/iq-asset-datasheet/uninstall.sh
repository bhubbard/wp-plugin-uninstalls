#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQmaximages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowthmbnails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowaboutreviews'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowassetname'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowprices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowdescription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowimages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowvideo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowassetmetadata'"
wp option delete 'IQdatasheet_template_IQmaximages'
wp option delete 'IQdatasheet_template_IQshowthmbnails'
wp option delete 'IQdatasheet_template_IQshowaboutreviews'
wp option delete 'IQdatasheet_template_IQshowassetname'
wp option delete 'IQdatasheet_template_IQshowprices'
wp option delete 'IQdatasheet_template_IQshowdescription'
wp option delete 'IQdatasheet_template_IQshowimages'
wp option delete 'IQdatasheet_template_IQshowvideo'
wp option delete 'IQdatasheet_template_IQshowassetmetadata'

