#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpletoc_wrapper_enabled'
wp option delete 'simpletoc_accordion_enabled'
wp option delete 'simpletoc_absolute_urls_enabled'
wp option delete 'simpletoc_smooth_enabled'
wp option delete 'simpletoc_autoupdate_enabled'

