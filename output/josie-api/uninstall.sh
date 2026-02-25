#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'josie_api_cors'
wp option delete 'josie_api_max_posts_per_page'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tlc_up__%' OR option_name LIKE '_site_transient_tlc_up__%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tlc__%' OR option_name LIKE '_site_transient_tlc__%'"

