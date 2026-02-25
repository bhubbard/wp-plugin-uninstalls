#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suc_active'
wp option delete 'suc_by_role'
wp option delete 'suc_role_to_redirect'
wp option delete 'suc_ip_whitelist'

