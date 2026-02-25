#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_civi_host'
wp option delete 'cf7_civi_path'
wp option delete 'cf7_civi_site_key'
wp option delete 'cf7_civi_api_key'

