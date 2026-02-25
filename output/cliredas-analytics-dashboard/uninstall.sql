-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cliredas_report_last_7_days', 'cliredas_report_last_30_days');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cliredas_ga4_oauth_state_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('cliredas_ga4_oauth_state_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('cliredas_ga4_oauth_state_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cliredas_ga4_oauth_state_token');

