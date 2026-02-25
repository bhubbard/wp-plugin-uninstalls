#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mucd_disable_enhanced_site_select'
wp option delete 'mucd_duplicables'
wp option delete 'mucd_copy_files'
wp option delete 'mucd_keep_users'
wp option delete 'mucd_log'
wp option delete 'mucd_log_dir'

