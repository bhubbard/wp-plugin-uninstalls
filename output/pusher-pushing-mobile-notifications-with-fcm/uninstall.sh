#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pusherfcm-settings-state'
wp option delete 'pusherfcm-settings-key'
wp option delete 'pusherfcm-settings-id'
wp option delete 'pusherfcm-settings-topic'
wp option delete 'pusherfcm-settings-msg'
wp option delete 'pusherfcm-ex-pusherPost'
wp option delete 'pusherfcm-ex-secret'
wp option delete 'pusherfcm-ex-api'

