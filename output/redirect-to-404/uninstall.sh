#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PRT_redirect_404_pageUrl'
wp option delete 'PRT_redirect_404_status'
wp option delete 'prfx_value'
wp option delete 'prfx_info'

