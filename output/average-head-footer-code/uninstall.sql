-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_wide_head_code', 'site_wide_footer_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('avrghdftrcd_head_code', 'avrghdftrcd_footer_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('avrghdftrcd_head_code', 'avrghdftrcd_footer_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('avrghdftrcd_head_code', 'avrghdftrcd_footer_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('avrghdftrcd_head_code', 'avrghdftrcd_footer_code');

