#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tokenaccess_placeholder_html'
wp option delete 'tokenaccess_token_key'
wp option delete 'tokenaccess_expiry_hours'
wp option delete 'tokenaccess_add_token'
wp option delete 'tokenaccess_remove_token'
wp option delete 'add_token'
wp option delete 'remove_token'
wp option delete 'expire_hours'

