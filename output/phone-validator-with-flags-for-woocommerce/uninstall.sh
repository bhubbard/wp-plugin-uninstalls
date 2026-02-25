#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phone_validator_flags_activation_time'
wp option delete 'phone_validator_flags_last_notice_time'

