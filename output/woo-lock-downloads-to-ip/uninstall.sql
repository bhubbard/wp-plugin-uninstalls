-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooiplock_lock_type', 'ip_range_start', 'ip_range_end', 'wooiplock_enable', 'wooiplock_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bypass_ip_lock', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('bypass_ip_lock', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('bypass_ip_lock', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bypass_ip_lock', '_customer_ip_address');

