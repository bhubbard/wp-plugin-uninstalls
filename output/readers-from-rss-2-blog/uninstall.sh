#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'
wp option delete 'rfr2b_activate'
wp option delete 'rfr2b_name'
wp option delete 'rfr2b_email'
wp option delete 'wsa_alert_msg'

