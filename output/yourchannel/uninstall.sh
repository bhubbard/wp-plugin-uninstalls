#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yrc_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_refresh'"
wp option delete 'yrc_keys'
wp option delete 'yrc_lang_terms'
wp option delete 'yrc_license_key'
wp option delete 'yrc_wrong_version_notice'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_perm' OR option_name LIKE '_site_transient_%_perm'"

