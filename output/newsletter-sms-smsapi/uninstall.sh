#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsapi_notifications'
wp option delete 'smsapi_subscription'
wp option delete 'smsapi_client'

