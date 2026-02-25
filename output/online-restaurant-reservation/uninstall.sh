#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'online_restaurant_reservation_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'online_restaurant_reservation_admin_notice_%'"
wp option delete 'online_restaurant_reservation_db_version'
wp option delete 'online_restaurant_reservation_queue_flush_rewrite_rules'
wp option delete 'online_restaurant_reservation_admin_footer_text_rated'
wp option delete 'online_restaurant_reservation_enable_table_reservation_comments'
wp option delete 'online_restaurant_reservation_min_party_size'
wp option delete 'online_restaurant_reservation_schedule'
wp option delete 'online_restaurant_reservation_email_from_name'
wp option delete 'online_restaurant_reservation_email_from_address'
wp option delete 'online_restaurant_reservation_version'
wp option delete 'online_restaurant_reservation_max_party_size'
wp option delete 'online_restaurant_reservation_enable_comments'
wp option delete 'online_restaurant_reservation_time_range_steps'
wp option delete 'online_table_reservation_schedule'
wp option delete 'online_restaurant_reservation_email_footer_text'
wp option delete 'online_restaurant_reservation_email_header_image'
wp option delete 'online_restaurant_reservation_email_background_color'
wp option delete 'online_restaurant_reservation_email_body_background_color'
wp option delete 'online_restaurant_reservation_email_base_color'
wp option delete 'online_restaurant_reservation_email_text_color'

# Delete Transients
wp transient delete 'orr_installing'
wp transient delete '_orr_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'online_restaurant_reservation_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'angry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'angry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'angry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'angry'"
