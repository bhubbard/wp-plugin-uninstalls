#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'primail_api_debug_enabled'
wp option delete 'primail_api_test_key'
wp option delete 'primail_api_key'
wp option delete 'primail_default_from_name'
wp option delete 'primail_default_from_email'

