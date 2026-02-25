#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gts_addtopost_top_enabled'
wp option delete 'gts_addtopost_top'
wp option delete 'gts_addtopost_bottom_enabled'
wp option delete 'gts_addtopost_bottom'

