#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pic_format'
wp option delete 'pic_css'
wp option delete 'pic_days'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pic_%' OR option_name LIKE '_site_transient_pic_%'"

