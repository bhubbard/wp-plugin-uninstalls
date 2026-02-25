#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_tml_dismissed_notices'
wp option delete 'theme_my_login'
wp option delete 'tml_login_type'
wp option delete '_tml_installed_at'
wp option delete '_tml_updated_at'
wp option delete '_tml_previous_version'
wp option delete '_tml_version'
wp option delete 'tml_ajax'
wp option delete 'tml_registration_type'
wp option delete 'tml_user_passwords'
wp option delete 'tml_auto_login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slug'"
wp option delete 'rewrite_rules'
wp option delete 'illegal_names'
wp option delete 'registration'
wp option delete 'tml_use_permalinks'

# Delete Transients
wp transient delete 'settings_errors'

