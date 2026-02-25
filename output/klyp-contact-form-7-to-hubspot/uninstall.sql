-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klyp_cf7tohs_api_key', 'klyp_cf7tohs_portal_id', 'klyp_cf7tohs_base_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_klyp-cf7-to-hubspot-form-redirect', '_klyp-cf7-to-hubspot-cf-map-fields', '_klyp-cf7-to-hubspot-hs-map-fields', '_klyp-cf7-to-hubspot-form-id', '_klyp-cf7-to-hubspot-cf7-email-field', '_klyp-cf7-to-hubspot-email-field', '_klyp-cf7-to-hubspot-dealbreaker-allow', '_klyp-cf7-to-hubspot-dealbreaker-field', '_klyp-cf7-to-hubspot-dealbreaker-value', '_klyp-cf7-to-hubspot-stage-id', '_klyp-cf7-to-hubspot-pipeline-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_klyp-cf7-to-hubspot-form-redirect', '_klyp-cf7-to-hubspot-cf-map-fields', '_klyp-cf7-to-hubspot-hs-map-fields', '_klyp-cf7-to-hubspot-form-id', '_klyp-cf7-to-hubspot-cf7-email-field', '_klyp-cf7-to-hubspot-email-field', '_klyp-cf7-to-hubspot-dealbreaker-allow', '_klyp-cf7-to-hubspot-dealbreaker-field', '_klyp-cf7-to-hubspot-dealbreaker-value', '_klyp-cf7-to-hubspot-stage-id', '_klyp-cf7-to-hubspot-pipeline-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_klyp-cf7-to-hubspot-form-redirect', '_klyp-cf7-to-hubspot-cf-map-fields', '_klyp-cf7-to-hubspot-hs-map-fields', '_klyp-cf7-to-hubspot-form-id', '_klyp-cf7-to-hubspot-cf7-email-field', '_klyp-cf7-to-hubspot-email-field', '_klyp-cf7-to-hubspot-dealbreaker-allow', '_klyp-cf7-to-hubspot-dealbreaker-field', '_klyp-cf7-to-hubspot-dealbreaker-value', '_klyp-cf7-to-hubspot-stage-id', '_klyp-cf7-to-hubspot-pipeline-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_klyp-cf7-to-hubspot-form-redirect', '_klyp-cf7-to-hubspot-cf-map-fields', '_klyp-cf7-to-hubspot-hs-map-fields', '_klyp-cf7-to-hubspot-form-id', '_klyp-cf7-to-hubspot-cf7-email-field', '_klyp-cf7-to-hubspot-email-field', '_klyp-cf7-to-hubspot-dealbreaker-allow', '_klyp-cf7-to-hubspot-dealbreaker-field', '_klyp-cf7-to-hubspot-dealbreaker-value', '_klyp-cf7-to-hubspot-stage-id', '_klyp-cf7-to-hubspot-pipeline-id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

