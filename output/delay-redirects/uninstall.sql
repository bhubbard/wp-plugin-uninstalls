-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('delay_redirect_delay-in-seconds', 'delay_redirect_destination-path-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('delay_redirect_delay-in-seconds', 'delay_redirect_destination-path-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('delay_redirect_delay-in-seconds', 'delay_redirect_destination-path-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('delay_redirect_delay-in-seconds', 'delay_redirect_destination-path-url');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'delay_redirect_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'delay_redirect_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'delay_redirect_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'delay_redirect_%';

