#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'falke_mdm_mappings'
wp option delete 'disabled_post_ids'
wp option delete 'lightbox_photoswipe_use_cache'
wp option delete 'lightbox_photoswipe_add_lazyloading'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lightbox_photoswipe_%'"

# Clear Cron Jobs
wp cron event delete 'lbwps_cleanup'

