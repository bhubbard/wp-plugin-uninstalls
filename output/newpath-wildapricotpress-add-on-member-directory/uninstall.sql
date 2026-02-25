-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wawp_restriction_status_name', 'wawp_addons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wawp_wa_user_id', 'wawp_user_status_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wawp_wa_user_id', 'wawp_user_status_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wawp_wa_user_id', 'wawp_user_status_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wawp_wa_user_id', 'wawp_user_status_key');

