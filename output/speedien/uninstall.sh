#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedien_options'
wp option delete 'speedien_cdnurl'
wp option delete 'speedien_preload_status'

