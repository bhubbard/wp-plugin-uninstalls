-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fb_url', 'tw_url', 'go_url', 'li_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('fb_url', 'tw_url', 'go_url', 'li_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('fb_url', 'tw_url', 'go_url', 'li_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fb_url', 'tw_url', 'go_url', 'li_url');

