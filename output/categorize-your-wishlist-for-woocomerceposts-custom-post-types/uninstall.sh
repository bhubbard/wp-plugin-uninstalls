#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwwpcpt_db_version'
wp option delete 'cwwpcpt_options'
wp option delete 'cwwpcpt_multi_posts_options'

