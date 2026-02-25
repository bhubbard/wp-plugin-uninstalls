#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'luckynode-database-version'
wp option delete 'luckynode-crm-settings'
wp option delete 'luckynode-maintenance-mailgun-settings'
wp option delete 'luckynode-optimization-image-sizes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'luckynode-optimization-image-settings'

