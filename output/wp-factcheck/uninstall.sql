-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfc-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpfc_claim', '_wpfc_author', '_wpfc_source', '_wpfc_verdict', '_wpfc_explainer', '_wpfc_author_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpfc_claim', '_wpfc_author', '_wpfc_source', '_wpfc_verdict', '_wpfc_explainer', '_wpfc_author_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpfc_claim', '_wpfc_author', '_wpfc_source', '_wpfc_verdict', '_wpfc_explainer', '_wpfc_author_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpfc_claim', '_wpfc_author', '_wpfc_source', '_wpfc_verdict', '_wpfc_explainer', '_wpfc_author_type');

