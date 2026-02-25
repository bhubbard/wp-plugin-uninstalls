-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfo_container', 'sfo_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simple_folio_item_link', '_simple_folio_item_client_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simple_folio_item_link', '_simple_folio_item_client_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simple_folio_item_link', '_simple_folio_item_client_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simple_folio_item_link', '_simple_folio_item_client_name');

