#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'couponzen_archive_page_style'
wp option delete 'couponzen_par_pages'
wp option delete 'couponzen_post_order'
wp option delete 'couponzen_post_order_by'
wp option delete 'couponzen_coupon_text'
wp option delete 'couponzen_auto_coupon'
wp option delete 'couponzen_remaining_days'
wp option delete 'remaining_days_text'
wp option delete 'couponzen_expired_text'
wp option delete 'couponzen_button_text'
wp option delete 'couponzen_url_target'
wp option delete 'couponzen_button_text_color'
wp option delete 'couponzen_button_text_hover_color'
wp option delete 'couponzen_button_bg_color'
wp option delete 'couponzen_button_bg_hover_color'
wp option delete 'couponzen_coustom_css'
wp option delete 'couponzen_show_par_click'
wp option delete 'couponzen_titel_limit'
wp option delete 'sticky_post_update_check'
wp option delete 'hide_expired_coupon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenSticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenSticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenSticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenSticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenCouponDiscount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenCouponDiscount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenCouponDiscount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenCouponDiscount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenCouponCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenCouponCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenCouponCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenCouponCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'couponzen_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'couponzen_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'couponzen_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'couponzen_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenAutoCoupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenAutoCoupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenAutoCoupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenAutoCoupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenSiteUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenSiteUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenSiteUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenSiteUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCzenUrlTarget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCzenUrlTarget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCzenUrlTarget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCzenUrlTarget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htCouponzenDoFollowPostBtn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htCouponzenDoFollowPostBtn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htCouponzenDoFollowPostBtn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htCouponzenDoFollowPostBtn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
