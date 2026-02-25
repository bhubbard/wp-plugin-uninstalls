#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'triboon_logo'
wp option delete 'triboon_wp_token_option'
wp option delete 'notif_check'
wp option delete 'check_new_reportage'
wp option delete 'triboon_db_version'
wp option delete 'triboon_update_db_check'
wp option delete 'default-category'

