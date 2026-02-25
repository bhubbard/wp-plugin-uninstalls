#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'furikake_mode'
wp option delete 'furikake_yahoo_app_id'
wp option delete 'furikake_dictionary'
wp option delete 'furikake_grade'
wp option delete 'furikake_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'furikake_%'"

