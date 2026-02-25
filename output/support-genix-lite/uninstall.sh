#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'support_genix_lite_diagnostic_data_notice'
wp option delete 'support_genix_lite_diagnostic_data_agreed'
wp option delete 'health-check-allowed-plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_offer_last_deleted_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'apbd_wps_license_email'
wp option delete 'ApbdWps_pv_support-genix-lite'
wp option delete 'APBD_pv_support-genix-lite'
wp option delete 'ApbdWps_pv_support-genix'
wp option delete 'APBD_pv_support-genix'
wp option delete 'APBD_pv_apbd-wp-support'
wp option delete 'apbd_support_genix_lite_new_activation'
wp option delete 'apbd_support_genix_new_activation'
wp option delete 'apbd_support_genix_redirect_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%lic'"
wp option delete 'support_genix_lite_htiop_bar'
wp option delete 'apbd_wps_default_assign_role_added'
wp option delete 'sg_flush_rewrite_rules'
wp option delete '_sg_docs_order'
wp option delete 'apbd_support_genix_migrated'
wp option delete 'apbd_wps_encryption_key'
wp option delete 'apbd_wps_ai_proxy_license_key'
wp option delete 'apbd_wps_ticket_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_o_tkt_status'"
wp option delete 'sgkb_meta_fix_v2_completed'
wp option delete 'migration_in_progress'
wp option delete 'migration_progress_data'
wp option delete 'migration_start_time'
wp option delete 'post_type_migration_logs'
wp option delete 'sgnix_ticket_migration_in_progress'
wp option delete 'sgnix_ticket_migration_progress_data'
wp option delete 'sgnix_ticket_migration_start_time'
wp option delete 'sgnix_ticket_migration_mapping_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apbd-wps-envato-items-%' OR option_name LIKE '_site_transient_apbd-wps-envato-items-%'"
wp transient delete 'supportgenix_rwrite_rule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supportgenix_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supportgenix_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supportgenix_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supportgenix_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sglwenvato_auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sglwenvato_auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sglwenvato_auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sglwenvato_auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'only_for_chatbot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'only_for_chatbot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'only_for_chatbot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'only_for_chatbot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_docs_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_docs_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_docs_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_docs_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_icon_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_icon_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_icon_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_icon_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sgkb_feedback_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sgkb_feedback_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sgkb_feedback_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sgkb_feedback_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sg_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sg_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sg_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sg_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgkb_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgkb_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgkb_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgkb_views'"
