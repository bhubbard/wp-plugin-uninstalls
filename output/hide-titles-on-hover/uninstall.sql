-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'eos_htoh_sent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_notices');

