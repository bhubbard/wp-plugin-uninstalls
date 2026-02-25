#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zoho_flow_admin_footer_text_rated'
wp option delete 'last_review_notice_date'
wp option delete 'zf_boost_speed'
wp option delete 'wppb_manage_fields'

# Clear Cron Jobs
wp cron event delete 'zoho_flow_run_webhook'
wp cron event delete 'zoho_flow_rerun_after_5_mins'
wp cron event delete 'zoho_flow_rerun_after_10_mins'
wp cron event delete 'zoho_flow_rerun_after_30_mins'
wp cron event delete 'zoho_flow_rerun_after_60_mins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'service_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'service_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'service_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'service_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'level_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'level_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'level_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'level_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rform-entri-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rform-entri-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rform-entri-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rform-entri-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'suremembers_user_access_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
