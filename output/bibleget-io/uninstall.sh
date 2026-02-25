#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bibleget_settings'
wp option delete 'BGET'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%IDX'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bibleget_biblebooks%'"
wp option delete 'bibleget_versions'
wp option delete 'bibleget_error_admin_notices'
wp option delete 'bibleget_languages'
wp option delete 'bibleget_admin_notices'

