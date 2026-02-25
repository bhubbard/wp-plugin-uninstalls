#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xllentech_salat_timings_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_activate'"
wp option delete 'xllentech_salat_timings_rd_notice_hidden'
wp option delete 'xllentech_salat_timings_first_activate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden'"

