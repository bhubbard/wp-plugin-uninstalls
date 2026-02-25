#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'one_login_api_key'
wp option delete 'one_login_api_domain'

