#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automatic_post_date_filler_meta'
wp option delete 'automatic_post_date_filler_settings'
wp option delete 'automatic_post_date_filler'

