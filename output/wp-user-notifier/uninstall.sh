#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_comment_need_pending'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_cf7'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message'"

