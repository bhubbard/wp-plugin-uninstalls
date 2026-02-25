#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpdm_hide_all'
wp option delete '__wpdm_signup_roles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpdm_gb_categories_%' OR option_name LIKE '_site_transient_wpdm_gb_categories_%'"
wp transient delete 'wpdm_gb_link_templates'
wp transient delete 'wpdm_gb_post_templates'
wp transient delete 'wpdm_gb_layouts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '__wpdm_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '__wpdm_%'"
