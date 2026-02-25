#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ability_a11y_settings'
wp option delete 'ability_a11y_statement_page_id'
wp option delete 'ability_settings'
wp option delete 'ability_wizard_done'
wp option delete 'ability_wizard_settings'

# Delete Transients
wp transient delete 'ability_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ability_daily_scans_%' OR option_name LIKE '_site_transient_ability_daily_scans_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
