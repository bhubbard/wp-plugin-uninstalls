#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cansin_url_redirect_client_Address'
wp option delete 'cansin_url_redirect_host_api_secret'
wp option delete 'cansin_url_redirect_role'
wp option delete 'cansin_url_redirect_client_api_secret'
wp option delete 'cansin_url_redirect_list'
wp option delete 'cansin_url_redirect_host_Address'

