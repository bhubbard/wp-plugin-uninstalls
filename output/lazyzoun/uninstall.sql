-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lz_api_public_key', 'lz_api_private_key', 'lz_api_amazon_tld', 'amazon_partner_id', 'lz_debug', 'lz_gatracking', 'amazon_domain', 'lazyzoun', 'lz_logo_widget_title', 'lz_subimgtext', 'lz_presubimgtext', 'lz_aftersubimgtext');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lazyzoun-id', 'lazyzoun-name');
DELETE FROM wp_usermeta WHERE meta_key IN ('lazyzoun-id', 'lazyzoun-name');
DELETE FROM wp_termmeta WHERE meta_key IN ('lazyzoun-id', 'lazyzoun-name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lazyzoun-id', 'lazyzoun-name');

