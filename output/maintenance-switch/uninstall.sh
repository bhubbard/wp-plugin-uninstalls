#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintenance_switch_settings'
wp option delete 'ms_page_html'
wp option delete 'ms_switch_roles'
wp option delete 'ms_allowed_roles'
wp option delete 'ms_allowed_ips'
wp option delete 'ms_use_theme'
wp option delete 'ms_status'
wp option delete 'ms_maintenance_page_html'
wp option delete 'ms_allowed_ip'
wp option delete 'maintenance_switch_status'
wp option delete 'maintenance_switch_version'

