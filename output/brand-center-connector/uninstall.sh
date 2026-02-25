#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brandcenter_error_auth'
wp option delete 'brandcenter_url'
wp option delete 'brandcenter_user'
wp option delete 'brandcenter_pwd'
wp option delete 'authData'

