#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emmwt_countdown_date'
wp option delete 'emmwt_maint_message'
wp option delete 'emmwt_logo_url'
wp option delete 'emmwt_enabled'

