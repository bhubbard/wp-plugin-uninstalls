#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srym_sms_start_time'
wp option delete 'srym_sms_end_time'
wp option delete 'srym_sms_enabled'

