-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('make-me-static-change', 'make-me-static-uuid', 'make-me-static-last');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('make_me_static_host_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('make_me_static_host_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('make_me_static_host_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('make_me_static_host_ids');

