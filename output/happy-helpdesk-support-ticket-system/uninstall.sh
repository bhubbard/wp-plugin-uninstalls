#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpdesk_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_canned_assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_canned_assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_canned_assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_canned_assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_can_read_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_can_read_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_can_read_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_can_read_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_form_element_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_form_element_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_form_element_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_form_element_label'"
