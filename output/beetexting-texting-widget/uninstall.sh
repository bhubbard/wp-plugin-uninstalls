#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secondary_color'
wp option delete 'footer_text'
wp option delete 'phone_number'
wp option delete 'primary_color'
wp option delete 'wpbt-update-setting'

