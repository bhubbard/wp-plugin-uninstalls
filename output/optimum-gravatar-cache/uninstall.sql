-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('OGC_resolved', 'OGC_options', 'OGC_avatarUsedSizes', 'OGC_apacheConfig');

