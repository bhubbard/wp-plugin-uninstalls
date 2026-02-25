#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mca_onboarding'
wp option delete 'room_ID'
wp option delete 'chat_ID'
wp option delete 'website_verify'

