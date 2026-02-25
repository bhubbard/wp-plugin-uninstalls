#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_woo_quick_view_review_notice_dismiss'
wp option delete '_sp_wqvpro_options'
wp option delete 'woo_quick_view_version'
wp option delete 'woo_quick_view_first_version'
wp option delete 'woo_quick_view_activation_date'
wp option delete 'woo_quick_view_db_version'
wp option delete '_sp_wqv_options'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'

# Delete Transients
wp transient delete 'wooqv_plugins'

