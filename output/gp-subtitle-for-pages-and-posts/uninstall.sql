-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gp_post_page_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subtitle', '_global_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('subtitle', '_global_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('subtitle', '_global_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subtitle', '_global_notice');

