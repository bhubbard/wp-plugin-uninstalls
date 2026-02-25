#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctt_tracking_email_link_position'
wp option delete 'ctt_tracking_allow_users_update'
wp option delete 'ctt_tracking_email_link_type'

# Delete Transients
wp transient delete 'webdados_portuguese_postcodes_nag'

