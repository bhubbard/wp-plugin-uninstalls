-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpinfobox_maxitems', 'wpinfobox_css', 'wpinfobox_on_posts', 'wpinfobox_on_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpinfobox_title', 'wpinfobox_lead', 'wpinfobox_copy');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpinfobox_title', 'wpinfobox_lead', 'wpinfobox_copy');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpinfobox_title', 'wpinfobox_lead', 'wpinfobox_copy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpinfobox_title', 'wpinfobox_lead', 'wpinfobox_copy');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpinfobox_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpinfobox_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpinfobox_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpinfobox_item_%';

