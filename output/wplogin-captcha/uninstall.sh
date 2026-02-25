#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fresh_install'
wp option delete 'wplogin_google_key'
wp option delete 'wplogin_google_s_key'
wp option delete 'wplogin_google_type'

