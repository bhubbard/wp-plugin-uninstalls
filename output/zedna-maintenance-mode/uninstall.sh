#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zednamm_maintenance_role'
wp option delete 'zednamm_redirect_to_login'
wp option delete 'zednamm_message'

