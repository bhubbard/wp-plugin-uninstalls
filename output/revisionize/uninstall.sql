-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revisionize_settings', 'revisionize_network_settings', 'revisionize_installed_addons', 'revisionize_available_addons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_revision_of', '_post_original');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_revision_of', '_post_original');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_revision_of', '_post_original');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_revision_of', '_post_original');

