#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp-wcsp-woo-notice-dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_woo_category_slider_review_notice_dismiss'
wp option delete 'sp-wps-notice-dismissed'
wp option delete 'sp-wsb-notice-dismissed'
wp option delete 'sp_wcsp_settings'
wp option delete 'woo_category_slider_version'
wp option delete 'woo_category_slider_first_version'
wp option delete 'woo_category_slider_activation_date'
wp option delete 'woo_category_slider_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sp_category_slider_page_id%'"
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'spwoocs_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_wcsp_shortcode_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_wcsp_shortcode_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_wcsp_shortcode_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_wcsp_shortcode_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_wcsp_layout_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_wcsp_layout_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_wcsp_layout_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_wcsp_layout_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_wcsp_upload_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_wcsp_upload_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_wcsp_upload_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_wcsp_upload_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spf_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spf_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spf_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spf_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
