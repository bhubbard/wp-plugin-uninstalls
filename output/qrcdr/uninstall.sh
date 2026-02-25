#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qrcdr_country_codes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed'"

