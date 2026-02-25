-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrma_default_primary_cat', 'wrma_category_strategy', 'wrma_restricted_message', 'wrma_redirect_enabled', 'wrma_redirect_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wrma_access_mode', '_wrma_allowed_roles', '_wrma_primary_cat');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wrma_access_mode', '_wrma_allowed_roles', '_wrma_primary_cat');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wrma_access_mode', '_wrma_allowed_roles', '_wrma_primary_cat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wrma_access_mode', '_wrma_allowed_roles', '_wrma_primary_cat');

