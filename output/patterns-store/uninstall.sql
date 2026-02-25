-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('patterns_store_demo_url', 'patterns_store_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('patterns_store_demo_url', 'patterns_store_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('patterns_store_demo_url', 'patterns_store_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('patterns_store_demo_url', 'patterns_store_type');

