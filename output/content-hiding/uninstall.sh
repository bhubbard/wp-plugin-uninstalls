#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_hiding_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_content_hiding_%' OR option_name LIKE '_site_transient_content_hiding_%'"

