-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rnd_digi_desgi', 'rnd_digi_company', 'rnd_digi_address', 'rnd_digi_email', 'rnd_digi_website', 'rnd_digi_phone', 'rnd_digi_telphone', 'rnd_digi_whatsapp', 'rnd_digi_fax', 'rnd_digi_facebook', 'rnd_digi_twitter', 'rnd_digi_linkedin', 'rnd_digi_insta', 'rnd_digi_youtube', 'gallery_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('rnd_digi_desgi', 'rnd_digi_company', 'rnd_digi_address', 'rnd_digi_email', 'rnd_digi_website', 'rnd_digi_phone', 'rnd_digi_telphone', 'rnd_digi_whatsapp', 'rnd_digi_fax', 'rnd_digi_facebook', 'rnd_digi_twitter', 'rnd_digi_linkedin', 'rnd_digi_insta', 'rnd_digi_youtube', 'gallery_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('rnd_digi_desgi', 'rnd_digi_company', 'rnd_digi_address', 'rnd_digi_email', 'rnd_digi_website', 'rnd_digi_phone', 'rnd_digi_telphone', 'rnd_digi_whatsapp', 'rnd_digi_fax', 'rnd_digi_facebook', 'rnd_digi_twitter', 'rnd_digi_linkedin', 'rnd_digi_insta', 'rnd_digi_youtube', 'gallery_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rnd_digi_desgi', 'rnd_digi_company', 'rnd_digi_address', 'rnd_digi_email', 'rnd_digi_website', 'rnd_digi_phone', 'rnd_digi_telphone', 'rnd_digi_whatsapp', 'rnd_digi_fax', 'rnd_digi_facebook', 'rnd_digi_twitter', 'rnd_digi_linkedin', 'rnd_digi_insta', 'rnd_digi_youtube', 'gallery_data');

