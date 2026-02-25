#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'generate_settings'
wp option delete 'generate_dynamic_css_output'
wp option delete 'generate_dynamic_css_cached_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_customizer_reset_backup_%' OR option_name LIKE '_site_transient_customizer_reset_backup_%'"

