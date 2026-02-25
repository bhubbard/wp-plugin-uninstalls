-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'jhktmb_short_bio', 'jhktmb_job_title', 'jhktmb_email', 'jhktmb_phone', 'jhktmb_experience', 'jhktmb_vcard', 'jhktmb_fblink', 'jhktmb_instalink', 'jhktmb_lkdlink', 'jhktmb_twitlink', 'jhktmb_ytblink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'jhktmb_short_bio', 'jhktmb_job_title', 'jhktmb_email', 'jhktmb_phone', 'jhktmb_experience', 'jhktmb_vcard', 'jhktmb_fblink', 'jhktmb_instalink', 'jhktmb_lkdlink', 'jhktmb_twitlink', 'jhktmb_ytblink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'jhktmb_short_bio', 'jhktmb_job_title', 'jhktmb_email', 'jhktmb_phone', 'jhktmb_experience', 'jhktmb_vcard', 'jhktmb_fblink', 'jhktmb_instalink', 'jhktmb_lkdlink', 'jhktmb_twitlink', 'jhktmb_ytblink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'jhktmb_short_bio', 'jhktmb_job_title', 'jhktmb_email', 'jhktmb_phone', 'jhktmb_experience', 'jhktmb_vcard', 'jhktmb_fblink', 'jhktmb_instalink', 'jhktmb_lkdlink', 'jhktmb_twitlink', 'jhktmb_ytblink');

