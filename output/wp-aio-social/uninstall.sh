#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fb_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%yt_subs'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%fb_count' OR option_name LIKE '_site_transient_%fb_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%yt_subs' OR option_name LIKE '_site_transient_%yt_subs'"

