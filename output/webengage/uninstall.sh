#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webengage_widget_status'
wp option delete 'webengage_license_code'
wp option delete 'webengage_redirect_on_first_activation'

