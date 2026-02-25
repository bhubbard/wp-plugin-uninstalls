#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdevroe_tootfaves_instance_url'
wp option delete 'cdevroe_tootfaves_access_token'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdevroe_tootfaves_cache_%' OR option_name LIKE '_site_transient_cdevroe_tootfaves_cache_%'"

