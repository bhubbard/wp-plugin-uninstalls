-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clicutcl_attribution_settings', 'clicutcl_pii_risk_detected', 'clicutcl_consent_mode', 'clicutcl_gtm');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clicutcl_tracking_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clicutcl_tracking_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clicutcl_tracking_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clicutcl_tracking_sent');

