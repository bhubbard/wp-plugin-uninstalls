-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsl_address_category_slug', 'wpsl_disable_address_permalinks', 'wpsl_general_address_category_id', 'wpsl_disable_address_permalinks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_address_link', '_address_link_text', '_link_nofollow', '_link_blank', '_link_sponsored', '_is_sponsored', '_enable_permalink', '_disable_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_address_link', '_address_link_text', '_link_nofollow', '_link_blank', '_link_sponsored', '_is_sponsored', '_enable_permalink', '_disable_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_address_link', '_address_link_text', '_link_nofollow', '_link_blank', '_link_sponsored', '_is_sponsored', '_enable_permalink', '_disable_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_address_link', '_address_link_text', '_link_nofollow', '_link_blank', '_link_sponsored', '_is_sponsored', '_enable_permalink', '_disable_permalink');

