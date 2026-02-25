-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alphagf_installed', 'alphagf_version', 'gravityformsaddon_alphagf_google_calendar_settings', 'alphagf_gc_calender_list', 'alphagf_gc_auth_verified', 'alphagf_gc_auth_account', 'alphagf_gc_token_data', 'gravityformsaddon_alphagf_google_sheet_settings', 'alphagf_gs_sheet_list', 'alphagf_gs_auth_verified', 'alphagf_gs_auth_account', 'alphagf_gs_token_data', 'alphagf_gs_sheet_names', 'alphagf_gs_sheet_headers');

