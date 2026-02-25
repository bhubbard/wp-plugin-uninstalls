#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fl_version'
wp option delete 'fl_activation_date'
wp option delete 'force-user-login-options'

