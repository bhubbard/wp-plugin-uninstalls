#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbytax_template_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pbytax_meta_keys_query_%' OR option_name LIKE '_site_transient_pbytax_meta_keys_query_%'"

