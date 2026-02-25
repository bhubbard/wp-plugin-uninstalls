#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logintap_api_tenant'
wp option delete 'logintap_api_appuuid'
wp option delete 'logintap_api_login'
wp option delete 'logintap_api_password'
wp option delete 'logintap_api_accesstoken'
wp option delete 'logintap_api_refreshtoken'

