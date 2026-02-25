#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_sender_api_key'
wp option delete 'sms_sender_capabilities'
wp option delete 'sms_sender_test'

