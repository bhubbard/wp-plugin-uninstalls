#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_botsubmit_sent_urls_%' OR option_name LIKE '_site_transient_botsubmit_sent_urls_%'"

# Clear Cron Jobs
wp cron event delete 'botsubmit_process_queue'
wp cron event delete 'botsubmit_send_url_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botsubmit_send_on_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botsubmit_send_on_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botsubmit_send_on_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botsubmit_send_on_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botsubmit_send_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botsubmit_send_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botsubmit_send_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botsubmit_send_on_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botsubmit_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botsubmit_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botsubmit_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botsubmit_log'"
