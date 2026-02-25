-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultrawpf_install_date', 'ultrawpf_upload_dir_created', 'uawpf_gs_client_id', 'uawpf_gs_client_secret', 'uawpf_gs_redirect_uri', 'uawpf_gs_token', 'wpforms_providers', 'ultrawpfpro_status', 'ultrawpf_settings', 'uawpf_promo__schedule_start_from', 'uawpf_promo__schedule_option', 'tf_promo_notice_exists', 'tf_promo_widget_exists', 'uawpf_dashboard_widget_dismissed', 'tf_dismiss_admin_notice', 'uawpf_dismiss_post_notice', 'ultrawpf_setup_wizard', 'ultrawpf_installed', 'ultrawpf_installed_time', 'ultrawpf_version');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ultrawpf_form_opt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ultrawpf_form_opt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ultrawpf_form_opt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ultrawpf_form_opt');

