#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bshare_code'
wp option delete 'bshare_pos'
wp option delete 'bshare_inPage'
wp option delete 'bshare_inFeed'
wp option delete 'bshare_infeed'
wp option delete 'bshare_inpage'

