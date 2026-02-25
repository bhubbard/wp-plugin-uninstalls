#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpler_redirects_num_urls'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simpler_redirects_from_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simpler_redirects_to_url_%'"

