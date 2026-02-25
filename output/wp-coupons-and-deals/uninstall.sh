#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcd_enable-stats-count'
wp option delete 'wpcd_expiry-date-format'
wp option delete 'wpcd_review_notify'
wp option delete 'wpcd_custom-css'
wp option delete 'wpcd_coupon-type-bg-color'
wp option delete 'wpcd_dt-border-color'
wp option delete 'wpcd_hide-archive-thumbnail'
wp option delete 'wpcd_hidden-coupon-button-color'
wp option delete 'wpcd_copy-button-bg-color'
wp option delete 'wpcd_coupon-popup-bg-color'
wp option delete 'wpcd_pagination-color'
wp option delete 'wpcd_words-count'
wp option delete 'wpcd_copy-button-text'
wp option delete 'wpcd_after-copy-text'
wp option delete 'wpcd_coupon-vote-success'
wp option delete 'wpcd_coupon-vote-fail'
wp option delete 'wpcd_coupon-vote-already'
wp option delete 'wpcd_hide-expired-coupon'
wp option delete 'wpcd_coupon-hover-text'
wp option delete 'wpcd_deal-hover-text'
wp option delete 'wpcd_no-expiry-message'
wp option delete 'wpcd_expire-text'
wp option delete 'wpcd_expired-text'
wp option delete 'wpcd_hidden-coupon-text'
wp option delete 'wpcd_hidden-coupon-hover-text'
wp option delete 'wpcd_text-to-show'
wp option delete 'wpcd_custom-text'
wp option delete 'wpcd_eight-button-text'
wp option delete 'wpcd_disable-coupon-title-link'
wp option delete 'wpcd_coupon-title-tag'
wp option delete 'wpcd_dt-coupon-type-text'
wp option delete 'wpcd_infinite-scroll-in-archive'
wp option delete 'wpcd_featured-image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%'"
wp option delete 'wpcd_popup-goto-link'
wp option delete 'wpcd_form-shortcode-enable-thrash'
wp option delete 'wpcd_form-shortcode-split-form'
wp option delete 'wpcd_create-edit-import-allowed-roles'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpcd_coupon-link-target'
wp option delete 'wpcd_coupon-vote-system'
wp option delete 'wpcd_coupon-print-link'
wp option delete 'wpcd_coupon-social-share'
wp option delete 'wpcd_dt-deal-type-text'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-code-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-code-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-code-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-code-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_expire-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_click_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_click_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_click_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_click_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'coupon_details_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'coupon_details_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'coupon_details_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'coupon_details_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_template-eight-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_template-eight-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_template-eight-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_template-eight-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_discount-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_discount-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_discount-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_discount-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_second-discount-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_second-discount-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_second-discount-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_second-discount-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_third-discount-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_third-discount-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_third-discount-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_third-discount-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_second-coupon-code-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_second-coupon-code-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_second-coupon-code-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_second-coupon-code-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_third-coupon-code-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_third-coupon-code-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_third-coupon-code-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_third-coupon-code-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_deal-button-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_deal-button-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_deal-button-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_deal-button-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_second-deal-button-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_second-deal-button-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_second-deal-button-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_second-deal-button-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_third-deal-button-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_third-deal-button-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_third-deal-button-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_third-deal-button-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_show-expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_show-expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_show-expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_show-expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_second-expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_second-expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_second-expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_second-expire-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_third-expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_third-expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_third-expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_third-expire-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_expire-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_expire-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_expire-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_expire-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_hide-coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_hide-coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_hide-coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_hide-coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-image-input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-image-input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-image-input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-image-input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_template-five-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_template-five-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_template-five-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_template-five-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_template-six-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_template-six-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_template-six-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_template-six-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_template-seven-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_template-seven-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_template-seven-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_template-seven-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_never-expire-check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_never-expire-check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_never-expire-check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_never-expire-check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_down'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_down'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_down'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_down'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-image-print'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-image-print'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-image-print'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-image-print'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-image-width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-image-width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-image-width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-image-width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_details_coupon-image-height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_details_coupon-image-height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_details_coupon-image-height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_details_coupon-image-height'"
