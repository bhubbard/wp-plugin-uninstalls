#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license-status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license-expires'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-licenses'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notices'"
wp option delete 'advanced-ads-adsense-dashboard-filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ad-health-notices'"
wp option delete 'wp_rocket_settings'
wp option delete 'bp-pages'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'advads-ads-placements_backup'
wp option delete 'advads-ads-placements'
wp option delete 'advanced_ads_db_version'
wp option delete 'wp-smush-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'cmplz-current-version'
wp option delete 'advads-ad-groups'
wp option delete 'advads-ad-weights'
wp option delete 'ad_inserter'
wp option delete 'redux_builder_amp'
wp option delete 'adsforwp_settings'
wp option delete 'quick_adsense_settings'
wp option delete 'quads_settings'
wp option delete 'advanced-ads-2-compatibility-flag'
wp option delete 'advanced-ads'
wp option delete 'Advanced Ads Pro-internal'
wp option delete '_advanced_ads_data_usage'
wp option delete 'advanced_ads_adsense_report_DATE_AD_UNIT_CODE_EARNINGS_dashboard'
wp option delete 'advanced_ads_adsense_report_DATE_DOMAIN_NAME_EARNINGS_dashboard'
wp option delete 'advanced-ads-adsense'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-internal'"
wp option delete 'advanced-ads-adblocker'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_promo_hide' OR option_name LIKE '_site_transient_%_promo_hide'"
wp transient delete 'advanced-ads_add-on-updates-checked'
wp transient delete 'advanced-ads-daily-ad-health-check-ran'
wp transient delete 'advads-versions-list'
wp transient delete 'advads_feed_posts_v2'
wp transient delete 'advanced-ads-gam-all-units'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'advanced-ads-cleanup-import-file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced-ads-subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced-ads-subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced-ads-subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced-ads-subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advads_ad_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advads_ad_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advads_ad_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advads_ad_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced-ads-hide-wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced-ads-hide-wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced-ads-hide-wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced-ads-hide-wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ad_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ad_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ad_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ad_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_importer_session_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_importer_session_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_importer_session_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_importer_session_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_ads_selling_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_ads_selling_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_ads_selling_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_ads_selling_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_ads_selling_order_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_ads_selling_order_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_ads_selling_order_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_ads_selling_order_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced-ads-ad-list-screen-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced-ads-ad-list-screen-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced-ads-ad-list-screen-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced-ads-ad-list-screen-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced-ads-admin-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced-ads-admin-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced-ads-admin-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced-ads-admin-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced-ads-role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced-ads-role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced-ads-role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced-ads-role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_advanced_ads_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_advanced_ads_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_advanced_ads_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_advanced_ads_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_advanced_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_advanced_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_advanced_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_advanced_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'screen_layout_advanced_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'screen_layout_advanced_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'screen_layout_advanced_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'screen_layout_advanced_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closedpostboxes_advanced_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closedpostboxes_advanced_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closedpostboxes_advanced_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closedpostboxes_advanced_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_advanced_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_advanced_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_advanced_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_advanced_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advads-ad-screen-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advads-ad-screen-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advads-ad-screen-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advads-ad-screen-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advanced-ads_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advanced-ads_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advanced-ads_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advanced-ads_parent_id'"
