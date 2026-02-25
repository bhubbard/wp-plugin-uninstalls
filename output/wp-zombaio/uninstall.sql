-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_zombaio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_zombaio_redirect_disable', 'json_packet', 'user_id', 'amount', 'logmessage', 'wp_zombaio_delete', 'wp_zombaio_subscription_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_zombaio_redirect_disable', 'json_packet', 'user_id', 'amount', 'logmessage', 'wp_zombaio_delete', 'wp_zombaio_subscription_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_zombaio_redirect_disable', 'json_packet', 'user_id', 'amount', 'logmessage', 'wp_zombaio_delete', 'wp_zombaio_subscription_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_zombaio_redirect_disable', 'json_packet', 'user_id', 'amount', 'logmessage', 'wp_zombaio_delete', 'wp_zombaio_subscription_id', 'first_name', 'last_name');

