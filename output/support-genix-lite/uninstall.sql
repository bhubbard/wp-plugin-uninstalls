-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('support_genix_lite_diagnostic_data_notice', 'support_genix_lite_diagnostic_data_agreed', 'health-check-allowed-plugins', 'apbd_wps_license_email', 'ApbdWps_pv_support-genix-lite', 'APBD_pv_support-genix-lite', 'ApbdWps_pv_support-genix', 'APBD_pv_support-genix', 'APBD_pv_apbd-wp-support', 'apbd_support_genix_lite_new_activation', 'apbd_support_genix_new_activation', 'apbd_support_genix_redirect_flag', 'support_genix_lite_htiop_bar', 'apbd_wps_default_assign_role_added', 'sg_flush_rewrite_rules', '_sg_docs_order', 'apbd_support_genix_migrated', 'apbd_wps_encryption_key', 'apbd_wps_ai_proxy_license_key', 'apbd_wps_ticket_page_id', 'sgkb_meta_fix_v2_completed', 'migration_in_progress', 'migration_progress_data', 'migration_start_time', 'post_type_migration_logs', 'sgnix_ticket_migration_in_progress', 'sgnix_ticket_migration_progress_data', 'sgnix_ticket_migration_start_time', 'sgnix_ticket_migration_mapping_data', 'supportgenix_rwrite_rule');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_offer_last_deleted_version';
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%lic';
DELETE FROM wp_options WHERE option_name LIKE '%_o_tkt_status';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE 'apbd-wps-envato-items-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('supportgenix_avatar', 'is_guest', 'sglwenvato_auth', 'only_for_chatbot', '_sg_docs_order', '_sg_color', '_sg_icon_image', '_sg_order', '_sgkb_feedback_total', '_sg_icon', 'sgkb_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('supportgenix_avatar', 'is_guest', 'sglwenvato_auth', 'only_for_chatbot', '_sg_docs_order', '_sg_color', '_sg_icon_image', '_sg_order', '_sgkb_feedback_total', '_sg_icon', 'sgkb_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('supportgenix_avatar', 'is_guest', 'sglwenvato_auth', 'only_for_chatbot', '_sg_docs_order', '_sg_color', '_sg_icon_image', '_sg_order', '_sgkb_feedback_total', '_sg_icon', 'sgkb_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('supportgenix_avatar', 'is_guest', 'sglwenvato_auth', 'only_for_chatbot', '_sg_docs_order', '_sg_color', '_sg_icon_image', '_sg_order', '_sgkb_feedback_total', '_sg_icon', 'sgkb_views');

