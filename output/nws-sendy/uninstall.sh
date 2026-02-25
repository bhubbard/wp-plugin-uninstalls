#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nws_sendy_api_key'
wp option delete 'nws_sendy_list_id'
wp option delete 'nws_sendy_installation_url'
wp option delete 'nws_sendy_sendy_url'
wp option delete 'nws_sendy_be_silent'

