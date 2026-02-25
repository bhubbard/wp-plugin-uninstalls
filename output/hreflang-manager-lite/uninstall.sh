#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daexthrmal_options_version'
wp option delete 'daexthrmal_database_version'
wp option delete 'daexthrmal_language'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_language_%'"
wp option delete 'daexthrmal_script'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_script_%'"
wp option delete 'daexthrmal_locale'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_locale_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_delete'"
wp option delete 'daexthrmal_auto_alternate_pages'
wp option delete 'daexthrmal_show_log'
wp option delete 'daexthrmal_detect_url_mode'
wp option delete 'daexthrmal_https'
wp option delete 'daexthrmal_sample_future_permalink'
wp option delete 'daim_dismissible_notice_a'
wp option delete 'daexthrmal_auto_trailing_slash'

