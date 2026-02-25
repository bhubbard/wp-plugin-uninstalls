#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_course_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_approve'"

