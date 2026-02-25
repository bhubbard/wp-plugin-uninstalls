-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbam_setup_complete', 'wbam_setup_dismissed', 'wbam_settings', 'wbam_email_submissions', 'wbam_link_prefix', 'wbam_currency', '_wbam_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbam_enabled', '_wbam_placements', '_wbam_ad_data', '_wbam_priority', '_wbam_session_limit', '_wbam_display_rules', '_wbam_schedule', '_wbam_start_date', '_wbam_end_date', '_wbam_visitor_conditions', '_wbam_geo_targeting', '_wbam_sample_ad', '_wbam_code_sandbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbam_enabled', '_wbam_placements', '_wbam_ad_data', '_wbam_priority', '_wbam_session_limit', '_wbam_display_rules', '_wbam_schedule', '_wbam_start_date', '_wbam_end_date', '_wbam_visitor_conditions', '_wbam_geo_targeting', '_wbam_sample_ad', '_wbam_code_sandbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbam_enabled', '_wbam_placements', '_wbam_ad_data', '_wbam_priority', '_wbam_session_limit', '_wbam_display_rules', '_wbam_schedule', '_wbam_start_date', '_wbam_end_date', '_wbam_visitor_conditions', '_wbam_geo_targeting', '_wbam_sample_ad', '_wbam_code_sandbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbam_enabled', '_wbam_placements', '_wbam_ad_data', '_wbam_priority', '_wbam_session_limit', '_wbam_display_rules', '_wbam_schedule', '_wbam_start_date', '_wbam_end_date', '_wbam_visitor_conditions', '_wbam_geo_targeting', '_wbam_sample_ad', '_wbam_code_sandbox');

