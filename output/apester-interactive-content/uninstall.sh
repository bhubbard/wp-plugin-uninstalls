#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apester-tokens-sent'
wp option delete 'tokens-publish-option-updated'
wp option delete 'qmerce-settings-admin'
wp option delete 'qmerce-user-id'

