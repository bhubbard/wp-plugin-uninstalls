-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_postfinancecheckout_subscription_space_id', '_postfinancecheckout_subscription_token_id', '_postfinancecheckout_subscription_failed_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('_postfinancecheckout_subscription_space_id', '_postfinancecheckout_subscription_token_id', '_postfinancecheckout_subscription_failed_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('_postfinancecheckout_subscription_space_id', '_postfinancecheckout_subscription_token_id', '_postfinancecheckout_subscription_failed_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_postfinancecheckout_subscription_space_id', '_postfinancecheckout_subscription_token_id', '_postfinancecheckout_subscription_failed_renewal');

