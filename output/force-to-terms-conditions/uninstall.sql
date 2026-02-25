-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fttnc_page_id', 'fttnc_last_update', 'termnc_display_type', 'termnc_notice_info', 'termnc_custom_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ulast_agree_date', 'fttnc_exclude_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('ulast_agree_date', 'fttnc_exclude_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('ulast_agree_date', 'fttnc_exclude_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ulast_agree_date', 'fttnc_exclude_user');

