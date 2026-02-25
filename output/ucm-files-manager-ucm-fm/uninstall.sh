#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fm_import_media'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fm_super_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fm_allowed_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fm_restricted_users'"

