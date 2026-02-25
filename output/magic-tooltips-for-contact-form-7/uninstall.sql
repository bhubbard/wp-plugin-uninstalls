-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtfcf7_tooltip_generator', 'mtfcf7_settings', 'mtfcf7_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_mtfcf7_ag_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_mtfcf7_ag_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_mtfcf7_ag_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_mtfcf7_ag_notice');

