#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chcl_hashes'
wp option delete 'locked_items'
wp option delete 'chcl_site_key'
wp option delete 'chcl_secret_key'
wp option delete 'chcl_color_setting'
wp option delete 'chcl_bootstrap_button'

# Clear Cron Jobs
wp cron event delete 'chcl_add_every_three_minutes'

