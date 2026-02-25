#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewform_key'

# Delete Transients
wp transient delete 'ewform_api_notice_show'
wp transient delete 'ewform_hide_notice'

