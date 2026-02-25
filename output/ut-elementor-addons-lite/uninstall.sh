#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ut_settings'
wp option delete 'ut_flush'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'ua_enable_sticky'
wp option delete 'ua_enable_transparent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_mark_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_mark_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_mark_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_mark_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_no_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_no_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_no_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_no_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_ex_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_ex_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_ex_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_ex_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ut_ex_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ut_ex_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ut_ex_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ut_ex_post'"
