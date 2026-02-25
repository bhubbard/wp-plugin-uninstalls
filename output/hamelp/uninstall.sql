-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hamelp_rate_require_login', 'hamelp_rate_per_ip', 'hamelp_rate_daily', 'hamelp_rate_window');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_accessibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_accessibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_accessibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_accessibility');

