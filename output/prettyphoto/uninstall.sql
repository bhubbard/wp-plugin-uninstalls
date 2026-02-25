-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jltma_enable_prettyphoto', '_wp_attachment_image_alt', 'jltma_enable_prettyphoto');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jltma_enable_prettyphoto', '_wp_attachment_image_alt', 'jltma_enable_prettyphoto');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jltma_enable_prettyphoto', '_wp_attachment_image_alt', 'jltma_enable_prettyphoto');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jltma_enable_prettyphoto', '_wp_attachment_image_alt', 'jltma_enable_prettyphoto');

