#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TIEexpire_pub'
wp option delete 'TIEexpire_catsradio'
wp option delete 'TIEtools_notify_poster'
wp option delete 'TIEtools_notify_admin'
wp option delete 'TIEtools_notify_other'
wp option delete 'TIEexpire_draft'
wp option delete 'TIEexpire_pending'
wp option delete 'TIEexpire_private'
wp option delete 'TIEtools_notify_email'
wp option delete 'TIEexpire_catsin'
wp option delete 'TIEexpire_catsout'
wp option delete 'TIEexpire_catsdays'
wp option delete 'TIEexpire_catsposts'
wp option delete 'TIEexpire_catsviews'
wp option delete 'TIEexpire_catslikes'
wp option delete 'TIEexpire_days'
wp option delete 'TIEexpire_posts'
wp option delete 'TIEexpire_viewdays'
wp option delete 'TIEexpire_views'
wp option delete 'TIEexpire_likedays'
wp option delete 'TIEexpire_likes'

# Clear Cron Jobs
wp cron event delete 'my_expiry_job'

