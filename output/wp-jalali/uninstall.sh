#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ztjalali_do_activation'
wp option delete 'ztjalali_options'
wp option delete 'ztjalali_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mps_jd_options_%'"

