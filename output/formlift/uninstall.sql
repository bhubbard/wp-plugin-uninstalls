-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FormLift_Oauth_Tokens', 'Oauth_App_Domain', 'oauth_last_status', 'formlift_web_forms', 'formlift_leaderboard_rank', 'formlift_sessions_db_version', 'formlift_modules', 'formlift_submissions_db_version', 'formlift_impressions_db_version', 'formlift_auth_pass', 'formlift_awards_check', 'formlift_post_url', 'formlift_custom_fields', 'formlift_clean_up_waiting', 'formlift_license_verification', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flp_form_bits', 'inf_form_xid', 'inf_form_name', 'infusionsoft_version', 'conversion_rate', 'impressions', 'submissions');
DELETE FROM wp_usermeta WHERE meta_key IN ('flp_form_bits', 'inf_form_xid', 'inf_form_name', 'infusionsoft_version', 'conversion_rate', 'impressions', 'submissions');
DELETE FROM wp_termmeta WHERE meta_key IN ('flp_form_bits', 'inf_form_xid', 'inf_form_name', 'infusionsoft_version', 'conversion_rate', 'impressions', 'submissions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flp_form_bits', 'inf_form_xid', 'inf_form_name', 'infusionsoft_version', 'conversion_rate', 'impressions', 'submissions');

