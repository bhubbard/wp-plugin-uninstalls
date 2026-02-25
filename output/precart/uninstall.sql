-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_precart_enable_pre_order', '_precart_release_date', '_precart_pre_order_limit', '_precart_pre_order_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_precart_enable_pre_order', '_precart_release_date', '_precart_pre_order_limit', '_precart_pre_order_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_precart_enable_pre_order', '_precart_release_date', '_precart_pre_order_limit', '_precart_pre_order_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_precart_enable_pre_order', '_precart_release_date', '_precart_pre_order_limit', '_precart_pre_order_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

