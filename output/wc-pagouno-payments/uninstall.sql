-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pagouno_token', 'pagouno_cuotas', 'pagouno_hidden_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('pagouno_token', 'pagouno_cuotas', 'pagouno_hidden_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('pagouno_token', 'pagouno_cuotas', 'pagouno_hidden_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pagouno_token', 'pagouno_cuotas', 'pagouno_hidden_total');

