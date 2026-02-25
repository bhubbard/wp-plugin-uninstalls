#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urev_allowed_email_types'
wp option delete 'urev_access_key_status'
wp option delete 'urev_access_key_status_color'
wp option delete 'urev_access_key'
wp option delete 'urev_block_on_error'

