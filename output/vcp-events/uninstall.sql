-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_css';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vcp_info', 'vcp_color', 'vcp_comment_source_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('vcp_info', 'vcp_color', 'vcp_comment_source_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('vcp_info', 'vcp_color', 'vcp_comment_source_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vcp_info', 'vcp_color', 'vcp_comment_source_link');

