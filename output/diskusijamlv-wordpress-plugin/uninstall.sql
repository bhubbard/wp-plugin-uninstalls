-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diskusijam_api_page_key', 'diskusijam_api_user_key', 'diskusijam_profile_id', 'diskusijam_page_id', 'diskusijam_comment_sync', 'diskusijam_lang');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('diskusijam_comment');
DELETE FROM wp_usermeta WHERE meta_key IN ('diskusijam_comment');
DELETE FROM wp_termmeta WHERE meta_key IN ('diskusijam_comment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('diskusijam_comment');

