#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'automatorwp_hide_review_notice'
wp option delete 'automatorwp_install_date'
wp option delete 'automatorwp_settings'
wp option delete 'automatorwp_version'
wp option delete 'automatorwp_completed_upgrades'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'automatorwp_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'automatorwp_redirect_url_%'"
wp option delete 'automatorwp_aweber_auth'
wp option delete 'bluesky_refresh_token'
wp option delete 'bluesky_did'
wp option delete 'simplefavorites_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'items_per_page'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'automatorwp_plugins_api'
wp transient delete 'automatorwp_integrations_api'
wp transient delete 'automatorwp_user_metas_query'
wp transient delete 'automatorwp_post_metas_query'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_learndash_course_groups_%' OR option_name LIKE '_site_transient_learndash_course_groups_%'"
wp transient delete 'automatorwp_zoom_meetings'

# Clear Cron Jobs
wp cron event delete 'automatorwp_auto_logs_cleanup_event'
wp cron event delete 'automatorwp_auto_logs_cleanup'
wp cron event delete 'automatorwp_run_scheduled_automations_event'
wp cron event delete 'automatorwp_continue_automation_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wafp_is_affiliate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wafp_is_affiliate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wafp_is_affiliate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wafp_is_affiliate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_organizer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_organizer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_organizer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_organizer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mec_attendees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mec_attendees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mec_attendees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mec_attendees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_tutor_student'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_tutor_student'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_tutor_student'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_tutor_student'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_enrolled_by_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_enrolled_by_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_enrolled_by_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_enrolled_by_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_access_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_access_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_access_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_access_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_automatorwp_last_visit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_automatorwp_last_visit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_automatorwp_last_visit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_automatorwp_last_visit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_registrant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_registrant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_registrant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_registrant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_join_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_join_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_join_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_join_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
