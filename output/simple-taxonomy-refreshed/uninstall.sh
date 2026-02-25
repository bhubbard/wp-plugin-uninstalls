#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settings_updated'

# Delete Transients
wp transient delete 'simple_taxonomy_refreshed_rewrite'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staxo_sel_%' OR option_name LIKE '_site_transient_staxo_sel_%'"

