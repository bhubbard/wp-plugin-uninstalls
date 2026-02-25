#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kprj_allowed_email_types'
wp option delete 'kprj_access_key_status'
wp option delete 'kprj_access_key_status_color'
wp option delete 'kprj_access_key'

