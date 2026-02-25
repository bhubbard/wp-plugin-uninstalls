#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MSEHCR_ALLNET_URIS'
wp option delete 'MSEHCR_FeedWordpressExtLnkSel'
wp option delete 'MSEHCR_HeaderScripts'

