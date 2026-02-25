#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zt_msg91_authtoken'
wp option delete 'zt_msg91_country'
wp option delete 'zt_msg91_sender_name'
wp option delete 'zt_msg91_msgtxt'
wp option delete 'zt_msg91_route'

