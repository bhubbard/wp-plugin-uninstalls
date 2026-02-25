#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RSP_options'
wp option delete 'RSP_options[radio_option1]'
wp option delete 'RSP_options[RSP_text_string]'
wp option delete 'RSP_options[adshare_percentage]'

