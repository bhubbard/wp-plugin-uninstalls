-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xbar_content_color', 'xbar_background', 'xbar_title_background', 'xbar_title_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('xbar_content_color', 'xbar_background', 'xbar_title_background', 'xbar_title_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('xbar_content_color', 'xbar_background', 'xbar_title_background', 'xbar_title_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xbar_content_color', 'xbar_background', 'xbar_title_background', 'xbar_title_color');

