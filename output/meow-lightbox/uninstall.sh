#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwl_map_api_key'
wp option delete 'mwl_map_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mwl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_XX' OR option_name LIKE '_site_transient_%_XX'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_OO' OR option_name LIKE '_site_transient_%_OO'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_XO' OR option_name LIKE '_site_transient_%_XO'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_OX' OR option_name LIKE '_site_transient_%_OX'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
