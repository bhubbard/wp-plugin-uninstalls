#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ze_hxr_errors'
wp option delete 'site_name'
wp option delete 'ze_setting'

# Delete Transients
wp transient delete 'ze_error_alert'

