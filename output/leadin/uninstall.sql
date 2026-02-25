-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpe_template', 'leadin_portalId', 'leadin_account_name', 'leadin_portal_domain', 'leadin_hublet', 'leadin_disable_internal_tracking', 'leadin_business_unit_id', 'leadin_access_token', 'leadin_refresh_token', 'leadin_expiry_time', 'leadin_activation_time', 'leadin_content_embed_ui_install', 'proxy_mappings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leadin_email', 'leadin_skip_review', 'leadin_review_banner_last_call', 'leadin_has_min_contacts', 'leadin_track_consent');
DELETE FROM wp_usermeta WHERE meta_key IN ('leadin_email', 'leadin_skip_review', 'leadin_review_banner_last_call', 'leadin_has_min_contacts', 'leadin_track_consent');
DELETE FROM wp_termmeta WHERE meta_key IN ('leadin_email', 'leadin_skip_review', 'leadin_review_banner_last_call', 'leadin_has_min_contacts', 'leadin_track_consent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leadin_email', 'leadin_skip_review', 'leadin_review_banner_last_call', 'leadin_has_min_contacts', 'leadin_track_consent');

