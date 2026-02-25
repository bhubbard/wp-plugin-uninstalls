#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CjB-NumDelim'
wp option delete 'CjB-GoogleAPIKey'
wp option delete 'CjB-DelimStart_1'
wp option delete 'CjB-DelimEnd_1'
wp option delete 'CjB-DelimSite_1'
wp option delete 'PrivateRSSFeedLocation'

