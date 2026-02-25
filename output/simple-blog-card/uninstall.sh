#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpleblogcard_settings'
wp option delete 'simpleblogcard_access_ids'
wp option delete 'simpleblogcard_template'
wp option delete 'simpleblogcard_timeout'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simple_blog_card_%' OR option_name LIKE '_site_transient_simple_blog_card_%'"

