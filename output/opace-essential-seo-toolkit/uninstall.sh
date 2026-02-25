#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eseot_categories'
wp option delete 'eseot_sources'
wp option delete 'eseot_version'
wp option delete 'eseot_post_types'

