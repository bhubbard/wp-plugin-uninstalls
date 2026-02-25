#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sermons_nl_kerkomroep_mountpoint'
wp option delete 'sermons_nl_kerkomroep_min_delay'
wp option delete 'sermons_nl_kerkomroep_min_ahead'
wp option delete 'sermons_nl_kerktijden_id'
wp option delete 'sermons_nl_kerktijden_weeksahead'
wp option delete 'sermons_nl_kerktijden_weeksback'
wp option delete 'sermons_nl_youtube_channel'
wp option delete 'sermons_nl_youtube_key'
wp option delete 'sermons_nl_youtube_weeksback'
wp option delete 'sermons_nl_youtube_min_ahead'
wp option delete 'sermons_nl_icon_color_archive'
wp option delete 'sermons_nl_icon_color_planned'
wp option delete 'sermons_nl_icon_color_live'
wp option delete 'sermons_nl_last_update_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sermons_nl_icon_color_%'"

# Clear Cron Jobs
wp cron event delete 'sermons_nl_cron_quarterly'
wp cron event delete 'sermons_nl_cron_daily'

