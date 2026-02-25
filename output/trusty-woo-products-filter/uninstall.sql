-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trusty_woo_filter_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twf_Options');
DELETE FROM wp_usermeta WHERE meta_key IN ('twf_Options');
DELETE FROM wp_termmeta WHERE meta_key IN ('twf_Options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twf_Options');

