#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bibldare_schedule_data'
wp option delete 'bibldare_bible_cache_enabled'
wp option delete 'bibldare_bible_language'
wp option delete 'bibldare_bible_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bibldare_schedule_day_%' OR option_name LIKE '_site_transient_bibldare_schedule_day_%'"

