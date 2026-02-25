#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPXW_Cookie-Time'
wp option delete 'WPXW_only_admin'
wp option delete 'WPXW_excluded_ip'
wp option delete 'WPXW_file'

