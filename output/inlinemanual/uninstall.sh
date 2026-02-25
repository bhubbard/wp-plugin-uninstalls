#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Plugin'
wp option delete 'front_site_api_key'
wp option delete 'im_frontend_roles'
wp option delete 'site_api_key'
wp option delete 'im_admin_roles'

