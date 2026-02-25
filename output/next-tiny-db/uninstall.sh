#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntdbCurrentVersion'
wp option delete 'ntdbCurrentType'
wp option delete 'optTinyDB'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optIsTitle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optFieldsSeparator_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optSearchField_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optPartSearch_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optCaseSearch_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optShowHead_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optLineSpace_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optNewPage_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optImgPos_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optImgWidth_%'"

