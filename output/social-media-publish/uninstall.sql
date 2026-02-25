-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smp_fb_app_id', 'smp_fb_app_secret', 'smp_instagram_auto_publish', 'smp_facebook_auto_publish');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smp-ig-published', 'smp-fb-published');
DELETE FROM wp_usermeta WHERE meta_key IN ('smp-ig-published', 'smp-fb-published');
DELETE FROM wp_termmeta WHERE meta_key IN ('smp-ig-published', 'smp-fb-published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smp-ig-published', 'smp-fb-published');

