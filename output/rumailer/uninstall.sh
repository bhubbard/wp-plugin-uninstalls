#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rumailer_setting_api'
wp option delete 'rumailer_setting_name'
wp option delete 'rumailer_setting_email'

