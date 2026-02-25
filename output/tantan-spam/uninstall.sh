#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tantan_spam_filter'
wp option delete 'tantan_spam_filter_recaptcha'
wp option delete 'tantan-spam-count'
wp option delete 'update_plugins'

