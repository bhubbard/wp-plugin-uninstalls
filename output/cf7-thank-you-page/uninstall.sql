-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_thank_you_page_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7_redirect_setting', 'use_external_url', 'enable_redirect', 'external_url', 'redirect_page', 'redirect_post_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7_redirect_setting', 'use_external_url', 'enable_redirect', 'external_url', 'redirect_page', 'redirect_post_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7_redirect_setting', 'use_external_url', 'enable_redirect', 'external_url', 'redirect_page', 'redirect_post_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7_redirect_setting', 'use_external_url', 'enable_redirect', 'external_url', 'redirect_page', 'redirect_post_type');

