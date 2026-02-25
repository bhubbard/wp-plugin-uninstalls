#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookspin_log_db_version'
wp option delete 'cookspin_has_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cookspin_wppref_dummy_%'"

