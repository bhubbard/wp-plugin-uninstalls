#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Flovidy_Plugin_bitly_access_token'
wp option delete 'Flovidy_Plugin_uk_ref'
wp option delete 'Flovidy_Plugin_jp_ref'
wp option delete 'Flovidy_Plugin_br_ref'
wp option delete 'Flovidy_Plugin_au_ref'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ref'"
wp option delete 'Flovidy_Plugin_us_ref'

