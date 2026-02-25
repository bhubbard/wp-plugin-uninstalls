#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mangapress_upgrade'
wp option delete 'mangapress_options'
wp option delete 'mangapress_ver'
wp option delete 'mangapress_default_category'
wp option delete 'rewrite_rules'
wp option delete 'mangapress_db_ver'

# Delete Transients
wp transient delete 'mangapress_random_comics'

