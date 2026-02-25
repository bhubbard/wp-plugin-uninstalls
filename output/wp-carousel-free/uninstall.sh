#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_wp_carousel_free_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_wpcp_settings'
wp option delete '_wpcf_options'
wp option delete 'wp_carousel_free_version'
wp option delete 'wp_carousel_free_db_version'
wp option delete 'wpcp_page_data'
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'spwpcp_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_wpcp_upload_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_wpcp_upload_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_wpcp_upload_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_wpcp_upload_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_wpcp_shortcode_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_wpcp_shortcode_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_wpcp_shortcode_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_wpcp_shortcode_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcplinking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcplinking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcplinking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcplinking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crop_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crop_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crop_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crop_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcplinktarget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcplinktarget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcplinktarget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcplinktarget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf_upload_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf_upload_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf_upload_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf_upload_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
