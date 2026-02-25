#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bsk_pdf_manager_open_target'
wp option delete '_bsk_pdf_manager_category_list_has_title'
wp option delete '_bsk_pdf_manager_pdf_order_by_'
wp option delete '_bsk_pdf_manager_pdf_order_'
wp option delete '_bsk_pdf_manager_db_ver_'
wp option delete '_bsk_pdf_manager_rels_done_'
wp option delete '_bsk_pdf_manager_free_to_pro_done_'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_51'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_15'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_31'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_32'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_33'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_34'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_id_16'"

# Clear Cron Jobs
wp cron event delete 'bsk_pdfm_free_schedule_check_promote_weekly'
wp cron event delete 'bsk_pdfm_free_schedule_check_promote_daily'

