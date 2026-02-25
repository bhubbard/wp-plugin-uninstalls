-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_royal_foh_display_homepage', '_royal_foh_homepage_order', '_royal_foh_homepage_icon', '_homepage_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_royal_foh_display_homepage', '_royal_foh_homepage_order', '_royal_foh_homepage_icon', '_homepage_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_royal_foh_display_homepage', '_royal_foh_homepage_order', '_royal_foh_homepage_icon', '_homepage_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_royal_foh_display_homepage', '_royal_foh_homepage_order', '_royal_foh_homepage_icon', '_homepage_icon');

