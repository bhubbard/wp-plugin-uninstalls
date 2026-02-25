#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'headlesskey_db_version'
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_headlesskey_otp_%' OR option_name LIKE '_site_transient_headlesskey_otp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_locked' OR option_name LIKE '_site_transient_%_locked'"
wp transient delete 'jetpack_is_single_user'

