-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cercf7_routing_enabled', '_cercf7_use_default_email', '_cercf7_routing_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cercf7_routing_enabled', '_cercf7_use_default_email', '_cercf7_routing_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cercf7_routing_enabled', '_cercf7_use_default_email', '_cercf7_routing_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cercf7_routing_enabled', '_cercf7_use_default_email', '_cercf7_routing_conditions');

