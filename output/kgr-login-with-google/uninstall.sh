#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kgr-login-with-google-client-id'
wp option delete 'kgr-login-with-google-client-secret'
wp option delete 'kgr-login-with-google-remember'

