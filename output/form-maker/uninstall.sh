#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contact_form_forms'
wp option delete 'wd_form_maker_version'
wp option delete 'fm_subscribe_email'
wp option delete 'two-front-page-speed'
wp option delete 'twb_images_total_size'
wp option delete 'twb_speed_score'
wp option delete 'tenweb_domain_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp option delete 'tenweb_access_token'
wp option delete 'twb_show_cta'
wp option delete 'twb_hompage_optimized'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'fm_db_full_privileged'
wp option delete 'fm_db_full_privileged_notice'
wp option delete 'tenweb_webinar_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fm_email_data_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fm_email_data_%'"

# Delete Transients
wp transient delete 'twb_optimized_pages'
wp transient delete 'tenweb_subscription_id'
wp transient delete 'fm_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
