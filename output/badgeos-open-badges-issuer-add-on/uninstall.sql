-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('json_api_base', 'badgeos_obi_issuer_public_evidence', 'badgeos_obi_issuer_org_name', 'badgeos_obi_issuer_org_url', 'json_api_controllers', 'badgeos_obi_issuer_alt_email', 'badgeos_obi_issuer_org_description', 'badgeos_obi_issuer_org_image', 'badgeos_obi_issuer_org_email', 'badgeos_obi_issuer_org_revocationList', 'badgeos_obi_issuer_css_bypass');
DELETE FROM wp_options WHERE option_name LIKE 'badgeos_obi_issuer_org_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_submission_achievement_id', '_badgeos_backpack_pushed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_submission_achievement_id', '_badgeos_backpack_pushed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_submission_achievement_id', '_badgeos_backpack_pushed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_submission_achievement_id', '_badgeos_backpack_pushed');

