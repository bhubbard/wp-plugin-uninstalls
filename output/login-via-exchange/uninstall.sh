#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginviaexchange_ews_url'
wp option delete 'loginviaexchange_allow_wp_user'
wp option delete 'loginviaexchange_version'

