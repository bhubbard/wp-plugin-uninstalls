-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmp_manage_general', 'bmp_manage_eligibility', 'bmp_manage_payout', 'bmp_manage_email');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_bmp_page', 'bmp_first_name', 'bmp_last_name', 'bmp_username', 'bmp_sponsor_id', 'bmp_phone', 'bmp_position', 'bmp_page_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_bmp_page', 'bmp_first_name', 'bmp_last_name', 'bmp_username', 'bmp_sponsor_id', 'bmp_phone', 'bmp_position', 'bmp_page_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_bmp_page', 'bmp_first_name', 'bmp_last_name', 'bmp_username', 'bmp_sponsor_id', 'bmp_phone', 'bmp_position', 'bmp_page_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_bmp_page', 'bmp_first_name', 'bmp_last_name', 'bmp_username', 'bmp_sponsor_id', 'bmp_phone', 'bmp_position', 'bmp_page_title');

