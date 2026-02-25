-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pap_active_time', 'pap_review_dismiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pap_custom', 'Affiliate', 'Visitor ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('pap_custom', 'Affiliate', 'Visitor ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('pap_custom', 'Affiliate', 'Visitor ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pap_custom', 'Affiliate', 'Visitor ID');

