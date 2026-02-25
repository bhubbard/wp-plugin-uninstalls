-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyjobs_analytics_connected', 'easyjobs_company_info', 'easyjobs_parent_page', 'easyjobs_settings', 'wpdeveloper_plugins_data', 'easyjobs_black_friday_notice', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'easyjobs_company_details', 'easyjobs_ai_setup', 'easyjobs_wp_pages', 'easyjobs_widgets_or_shortcode', 'easyjobs_company_verification_status', 'easyjobs_activation_redirect', 'wpnotice_priority_time_expired', 'easyjobs_state_version', 'easyjobs_parent_creating');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'elej_company_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ej_block_lists', '_wp_page_template', 'easyjobs_job_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ej_block_lists', '_wp_page_template', 'easyjobs_job_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ej_block_lists', '_wp_page_template', 'easyjobs_job_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ej_block_lists', '_wp_page_template', 'easyjobs_job_id');

