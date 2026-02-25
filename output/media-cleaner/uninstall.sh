#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpseo_titles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmc_%'"
wp option delete 'wpmc_options'
wp option delete 'sidebars_widgets'
wp option delete 'woocommerce_placeholder_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
