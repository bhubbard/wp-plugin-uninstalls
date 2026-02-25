#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgp_autosend'
wp option delete 'dgp_api'
wp option delete 'dgp_error'
wp option delete 'dgp_key'
wp option delete 'dgp_delay'
wp option delete 'dgp_nativerequest'
wp option delete 'dgp_inpageads'
wp option delete 'dgp_type'
wp option delete 'dgp_theme'
wp option delete 'dgp_message'
wp option delete 'dgp_title'
wp option delete 'dgp_allowbutton'
wp option delete 'dgp_denybutton'
wp option delete 'dgp_bgimage'

# Clear Cron Jobs
wp cron event delete 'dgp_ntf_sending'

