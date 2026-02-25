-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ft_signature_01', 'ft_signature_01_default', 'ft_signature_manager');
DELETE FROM wp_usermeta WHERE meta_key IN ('ft_signature_01', 'ft_signature_01_default', 'ft_signature_manager');
DELETE FROM wp_termmeta WHERE meta_key IN ('ft_signature_01', 'ft_signature_01_default', 'ft_signature_manager');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ft_signature_01', 'ft_signature_01_default', 'ft_signature_manager');

