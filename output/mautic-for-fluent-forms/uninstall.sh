#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fluentform_mautic_settings'
wp option delete 'fluentform_global_modules_status'

