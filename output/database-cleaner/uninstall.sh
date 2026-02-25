#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dbclnr_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sclegn_%'"
wp option delete 'dbclnr_options'
wp option delete 'dbclnr_fake_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp transient delete 'dbclnr_fake'
wp transient delete 'dbclnr_fake_for_timeout'

# Clear Cron Jobs
wp cron event delete 'dbclnr_cron_tasks'
wp cron event delete 'dbclnr_cron_analytics'
wp cron event delete 'dbclnr_cron_sweeper'
wp cron event delete 'dbclnr_cron_fake'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_bis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_bis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_bis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_bis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_oembed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_oembed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_oembed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_oembed_%'"
