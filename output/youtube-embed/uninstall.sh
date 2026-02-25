#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youtube_embed_version'
wp option delete 'youtube_embed_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_shortcode_%'"
wp option delete 'youtube_embed_shortcode_site'
wp option delete 'youtube_embed_shortcode_admin'
wp option delete 'youtube_embed_shortcode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_list%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_profile%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youtubeembed_%' OR option_name LIKE '_site_transient_youtubeembed_%'"

# Clear Cron Jobs
wp cron event delete 'housekeep_ye_transients'

