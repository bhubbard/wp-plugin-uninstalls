#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tl_permalinks_flushed'
wp option delete 'trustedlogin_vendor_config'

