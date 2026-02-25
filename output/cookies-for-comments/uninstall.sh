#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfc_delivery'
wp option delete 'cfc_key'
wp option delete 'cfc_speed'
wp option delete 'cfc_spam'
wp option delete 'cfc_spam_message'

