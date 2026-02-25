#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixelshop_key'
wp option delete 'pixelshop_message'
wp option delete 'pxs_last_export'
wp option delete 'pixelshop_id'

