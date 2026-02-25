#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwp_activation_run'
wp option delete 'pocket_wp_settings'
wp option delete 'pwp_settings'
wp option delete 'pwp_request_token'
wp option delete 'pwp_access_token'
wp option delete 'pwp_oauth_request'

