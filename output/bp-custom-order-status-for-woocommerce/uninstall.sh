#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'wcbv_status_default'
wp option delete 'bp_custom_order_status_installed'
wp option delete 'dfwc_plugin_review'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp transient delete 'cosmbp_new_version_installed_show_notice'
wp transient delete 'bpcosm_review_later'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'what_to_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'what_to_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'what_to_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'what_to_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipient_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipient_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipient_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipient_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
