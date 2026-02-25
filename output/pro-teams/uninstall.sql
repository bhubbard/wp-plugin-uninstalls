-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tpt_website', 'tpt_instagram', 'tpt_facebook', 'tpt_twitter', 'tpt_linkedin', 'tpt_youtube', 'tpt_behance', 'tpt_deviantart', 'gallery_data', 'tpt_tattooya', 'tpt_xarcoal');
DELETE FROM wp_usermeta WHERE meta_key IN ('tpt_website', 'tpt_instagram', 'tpt_facebook', 'tpt_twitter', 'tpt_linkedin', 'tpt_youtube', 'tpt_behance', 'tpt_deviantart', 'gallery_data', 'tpt_tattooya', 'tpt_xarcoal');
DELETE FROM wp_termmeta WHERE meta_key IN ('tpt_website', 'tpt_instagram', 'tpt_facebook', 'tpt_twitter', 'tpt_linkedin', 'tpt_youtube', 'tpt_behance', 'tpt_deviantart', 'gallery_data', 'tpt_tattooya', 'tpt_xarcoal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tpt_website', 'tpt_instagram', 'tpt_facebook', 'tpt_twitter', 'tpt_linkedin', 'tpt_youtube', 'tpt_behance', 'tpt_deviantart', 'gallery_data', 'tpt_tattooya', 'tpt_xarcoal');

