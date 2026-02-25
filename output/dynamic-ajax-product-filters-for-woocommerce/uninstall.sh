#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_slug_check_dismissed_time'
wp option delete 'dapfforwc_filters'
wp option delete 'dapfforwc_options'
wp option delete 'dapfforwc_style_options'
wp option delete 'dapfforwc_template_options'
wp option delete 'dapfforwc_advance_options'
wp option delete 'dapfforwc_seo_permalinks_options'
wp option delete 'dapfforwc_install_time'
wp option delete 'dapfforwc_review_already_done'
wp option delete 'dapfforwc_remind_me_later'
wp option delete 'dapfforwcpro_license_key'
wp option delete 'dapfforwcpro_license_status'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'onepaquc_analytics_last_sent'
wp option delete 'dapfforwc_license_key'

# Delete Transients
wp transient delete 'dapfforwcpro_admin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dapfforwc_filtered_ids_%' OR option_name LIKE '_site_transient_dapfforwc_filtered_ids_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dapfforwc_ny_notice_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dapfforwc_ny_notice_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dapfforwc_ny_notice_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dapfforwc_ny_notice_dismissed_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
