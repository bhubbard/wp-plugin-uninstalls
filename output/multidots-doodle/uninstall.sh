#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdoodle_settings'
wp option delete 'wpdoodle_default_rules_added'
wp option delete 'et_divi'

# Delete Transients
wp transient delete 'wpdoodle_form_errors'
wp transient delete 'mddoodle_logo_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_occasion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_occasion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_occasion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_occasion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_repeat_annual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_repeat_annual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_repeat_annual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_repeat_annual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_primary_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_primary_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_primary_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_primary_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_light_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_light_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_light_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_light_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_dark_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_dark_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_dark_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_dark_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_mobile_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_mobile_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_mobile_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_mobile_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdoodle_is_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdoodle_is_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdoodle_is_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdoodle_is_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
