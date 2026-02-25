#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dms_multisite'
wp option delete 'dms_sorting'
wp option delete 'dms_placeholder'
wp option delete 'dms_select_name'
wp option delete 'dms_options'

