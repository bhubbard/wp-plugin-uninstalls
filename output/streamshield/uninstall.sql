-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('streamshield_tenant', 'streamshield_key', 'streamshield_secret');

