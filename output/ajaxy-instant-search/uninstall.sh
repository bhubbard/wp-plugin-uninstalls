#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_setting_%'"
wp option delete 'ajaxy_sf_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_style_%'"
wp option delete 'ajaxy_sf_template_more'
wp option delete 'ajaxy-dismiss'

