#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wr2x_%'"
wp option delete 'elementor_css_print_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp transient delete 'wr2x_flush_rules'
wp transient delete 'wr2x_issues'
wp transient delete 'wr2x_ignores'
wp transient delete 'wr2x_optimize_issues'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wr2x_optimize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wr2x_optimize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wr2x_optimize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wr2x_optimize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_version'"
