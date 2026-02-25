-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shsp_title', '_shsp_li1', '_shsp_li2', '_shsp_li3', '_shsp_li4', '_shsp_li5', '_shsp_align', '_shsp_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shsp_title', '_shsp_li1', '_shsp_li2', '_shsp_li3', '_shsp_li4', '_shsp_li5', '_shsp_align', '_shsp_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shsp_title', '_shsp_li1', '_shsp_li2', '_shsp_li3', '_shsp_li4', '_shsp_li5', '_shsp_align', '_shsp_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shsp_title', '_shsp_li1', '_shsp_li2', '_shsp_li3', '_shsp_li4', '_shsp_li5', '_shsp_align', '_shsp_style');

