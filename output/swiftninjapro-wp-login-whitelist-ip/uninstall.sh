#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BrowserDetectAlgorithm'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_useNewBrowserDetect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Redirect404'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_RedirectLogin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BlockProxy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_AllowShortBots'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IPUseAdmin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_BRUseAdmin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_RecoveryGUID'"

