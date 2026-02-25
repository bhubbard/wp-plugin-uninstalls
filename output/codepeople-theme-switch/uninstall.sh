#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpts_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp transient delete 'codepeople_theme_switch_registered'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_theme_switch_theme_%' OR option_name LIKE '_site_transient_codepeople_theme_switch_theme_%'"

