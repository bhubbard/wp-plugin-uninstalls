-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('waap_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_atcid', '_anytrack_processed', '_wfocu_primary_order', '_wfocu_upsell_amount', '_anytrack_tracked_upsells');
DELETE FROM wp_usermeta WHERE meta_key IN ('_atcid', '_anytrack_processed', '_wfocu_primary_order', '_wfocu_upsell_amount', '_anytrack_tracked_upsells');
DELETE FROM wp_termmeta WHERE meta_key IN ('_atcid', '_anytrack_processed', '_wfocu_primary_order', '_wfocu_upsell_amount', '_anytrack_tracked_upsells');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_atcid', '_anytrack_processed', '_wfocu_primary_order', '_wfocu_upsell_amount', '_anytrack_tracked_upsells');

