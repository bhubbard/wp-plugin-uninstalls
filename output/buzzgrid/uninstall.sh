#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buzzgrid_status'
wp option delete 'buzzgrid_script_url'
wp option delete 'buzzgrid_site_url'
wp option delete 'buzzgrid_access_token'

