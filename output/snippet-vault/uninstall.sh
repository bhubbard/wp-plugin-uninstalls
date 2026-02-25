#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwcode_db_snippet_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwcode_notice_next_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwcode_notice_next_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwcode_notice_next_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwcode_notice_next_show'"
