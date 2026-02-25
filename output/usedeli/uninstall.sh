#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usedeli_api'
wp option delete 'usedeli_mls_id'
wp option delete 'usedeli_logo'
wp option delete 'usedeli_color'
wp option delete 'usedeli_position'
wp option delete 'usedeli_display_name'
wp option delete 'usedeli_display_on'
wp option delete 'usedeli_post_ids'
wp option delete 'usedeli_token'
wp option delete 'usedeli_initial_question'
wp option delete 'usedeli_status'

