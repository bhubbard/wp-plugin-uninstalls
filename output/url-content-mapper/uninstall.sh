#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urlcoma_mapper_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'urlcoma_mapper_data_backup_%'"

