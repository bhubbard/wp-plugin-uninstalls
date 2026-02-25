-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_purchased';
DELETE FROM wp_options WHERE option_name LIKE '%_donated';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oftto_show_sidebar', 'oftto_absolute_site_header', 'oftto_hide_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('oftto_show_sidebar', 'oftto_absolute_site_header', 'oftto_hide_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('oftto_show_sidebar', 'oftto_absolute_site_header', 'oftto_hide_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oftto_show_sidebar', 'oftto_absolute_site_header', 'oftto_hide_sidebar');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed';

