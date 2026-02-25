#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emcs_activation_time'
wp option delete 'emcs_display_greeting'
wp option delete 'emcs_encryption_key'
wp option delete 'emcs_settings'

