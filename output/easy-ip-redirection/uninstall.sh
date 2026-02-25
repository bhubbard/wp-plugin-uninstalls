#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eip_redirect_provider'
wp option delete 'eip_redirect_api2'
wp option delete 'eip_redirect_api3'
wp option delete 'eip_country'
wp option delete 'eip_ruletype'
wp option delete 'eip_redirect_url'

