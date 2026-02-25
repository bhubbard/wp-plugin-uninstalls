#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_authentication_enabled'
wp option delete 'basic_authentication_method'
wp option delete 'basic_authentication_password'

