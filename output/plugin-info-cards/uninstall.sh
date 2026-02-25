#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pic_plugin_%' OR option_name LIKE '_site_transient_pic_plugin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pic_author_%' OR option_name LIKE '_site_transient_pic_author_%'"

