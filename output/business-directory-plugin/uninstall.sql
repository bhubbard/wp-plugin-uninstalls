-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbdp-migrate-18_0-featured-pending', 'wpbdp-show-drip-pointer', 'wpbdp-db-version', 'wpbusdirman_db_version', 'wpbdp_licenses', 'wpbdp-show-tracking-pointer', 'wpbdp_updates', 'wpbdp_settings', 'wpbdp_first_activation', 'wpbdp-manual-upgrade-pending', 'wpbdp-active-theme', 'wpbdp-themes-licenses', 'wpbdp-listing-renewal-message', 'wpbdp-renewal-email-threshold', 'wpbdp-renewal-pending-message', 'wpbdp-send-autorenewal-expiration-notice', 'wpbdp-listing-autorenewal-notice', 'wpbdp-renewal-reminder-threshold', 'wpbdp-renewal-reminder-message', 'wpbdp-listing-autorenewal-message', 'wpbdp-expiration-notices', 'wpbdp-listing-renewal-auto', 'wpbdp-listing-renewal-auto-dontask', 'wpbdp-currency', 'wpbdp[category_images]', 'wpbdp-payment-abandonment-notified', 'rewrite_rules', 'new_admin_email', 'wpbdp-field-short-names', 'wpbdp-authorize-webhook-id', 'wpbdp_stripe_lite_last_verify_attempt', 'wpbdp-site_tracking_hash', 'ftp_credentials', 'wpbdp_licenses_errors', 'wpbdp-official-themes', 'wpbdp-themes-updates', 'wpbdp_server_requirements_warning_dismissed', 'wpbdp_updates', 'update_plugins', 'wpbdp_page_ids_main', 'wpbdp_page_ids_add-listing', 'wpbdp_page_ids_manage-listings', 'wpbdp_page_ids_view-listings', 'wpbdp-license-check-time');
DELETE FROM wp_options WHERE option_name LIKE 'wpbdp-license-status-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_validation_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_association_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_required_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_showinexcerpt_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_hide_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_options_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_order_%';
DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_label_%';
DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_amount%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_amount_%';
DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_increment_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_increment_%';
DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_images_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_images_%';
DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_categories_%';
DELETE FROM wp_options WHERE option_name LIKE '%listings-per-page';
DELETE FROM wp_options WHERE option_name LIKE '%notify-admin';
DELETE FROM wp_options WHERE option_name LIKE '%admin-notifications';
DELETE FROM wp_options WHERE option_name LIKE '%send-email-confirmation';
DELETE FROM wp_options WHERE option_name LIKE '%user-notifications';
DELETE FROM wp_options WHERE option_name LIKE '%show-search-form-in-results';
DELETE FROM wp_options WHERE option_name LIKE '%search-form-in-results';
DELETE FROM wp_options WHERE option_name LIKE 'wpbdp_export_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbdp_last_process_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbdp_page_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbdp-expired-licenses-notice-dismissed-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpbdp_notice_dismissed', '_wpbdp[images]', '_wpbdp_image_weight', '_wpbdp_image_caption', '_wpbdp[name]', '_wpbdp_tos_acceptance_date', '_gateway_suscription_cancel_status', '_cornerstone_data', '_et_pb_page_layout', '_wpbdp_contact_limit', '_wpbdp_temp_listingfields', '_wpbdp_stripe_payment_failed', '_wpbdp[import_sequence_id]', '_wpbdp_flagged', '_wpbdp_flagged_data', '_wpbdp[thumbnail_id]', '_thumbnail_id', '_wpbdp[access_key]', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpbdp_notice_dismissed', '_wpbdp[images]', '_wpbdp_image_weight', '_wpbdp_image_caption', '_wpbdp[name]', '_wpbdp_tos_acceptance_date', '_gateway_suscription_cancel_status', '_cornerstone_data', '_et_pb_page_layout', '_wpbdp_contact_limit', '_wpbdp_temp_listingfields', '_wpbdp_stripe_payment_failed', '_wpbdp[import_sequence_id]', '_wpbdp_flagged', '_wpbdp_flagged_data', '_wpbdp[thumbnail_id]', '_thumbnail_id', '_wpbdp[access_key]', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpbdp_notice_dismissed', '_wpbdp[images]', '_wpbdp_image_weight', '_wpbdp_image_caption', '_wpbdp[name]', '_wpbdp_tos_acceptance_date', '_gateway_suscription_cancel_status', '_cornerstone_data', '_et_pb_page_layout', '_wpbdp_contact_limit', '_wpbdp_temp_listingfields', '_wpbdp_stripe_payment_failed', '_wpbdp[import_sequence_id]', '_wpbdp_flagged', '_wpbdp_flagged_data', '_wpbdp[thumbnail_id]', '_thumbnail_id', '_wpbdp[access_key]', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpbdp_notice_dismissed', '_wpbdp[images]', '_wpbdp_image_weight', '_wpbdp_image_caption', '_wpbdp[name]', '_wpbdp_tos_acceptance_date', '_gateway_suscription_cancel_status', '_cornerstone_data', '_et_pb_page_layout', '_wpbdp_contact_limit', '_wpbdp_temp_listingfields', '_wpbdp_stripe_payment_failed', '_wpbdp[import_sequence_id]', '_wpbdp_flagged', '_wpbdp_flagged_data', '_wpbdp[thumbnail_id]', '_thumbnail_id', '_wpbdp[access_key]', 'nickname');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%]';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%]';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%]';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%]_selected';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%]_selected';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%]_selected';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]_selected';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpbdp_notice_sent_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%';

