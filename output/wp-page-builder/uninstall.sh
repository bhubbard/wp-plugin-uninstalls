#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zgpb-hide_upgrade_notice'
wp option delete 'zgpb-notice-alert'
wp option delete 'zigapage_lang'
wp option delete 'zgpb_b_activated'
wp option delete 'zigapage_f_notice_1'

# Delete Transients
wp transient delete 'styles_google_fonts'
wp transient delete 'styles_google_font_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_is_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_is_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_is_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_is_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_core'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_core'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_core'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_core'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_core_dev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_core_dev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_core_dev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_core_dev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_post_html_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_post_html_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_post_html_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_post_html_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zgpb_admin_cont_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zgpb_admin_cont_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zgpb_admin_cont_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zgpb_admin_cont_html'"
