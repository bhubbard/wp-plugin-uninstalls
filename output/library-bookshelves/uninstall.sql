-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbs_cat_overdrive', 'lbs_cat_System', 'lbs_cat_cloudlibrary', 'library_bookshelves', 'widget_bookshelves_widget');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('list_input', 'isbn', 'placeholders', 'shuffle_items', 'disable_links', 'slick_override', 'settings', 'ebooks', 'alt', 'wsapi', 'ws-key', 'ws-secret', 'ws-token-url', 'ws-request', 'ws-json', 'item_id_type', 'schedule', 'error_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('list_input', 'isbn', 'placeholders', 'shuffle_items', 'disable_links', 'slick_override', 'settings', 'ebooks', 'alt', 'wsapi', 'ws-key', 'ws-secret', 'ws-token-url', 'ws-request', 'ws-json', 'item_id_type', 'schedule', 'error_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('list_input', 'isbn', 'placeholders', 'shuffle_items', 'disable_links', 'slick_override', 'settings', 'ebooks', 'alt', 'wsapi', 'ws-key', 'ws-secret', 'ws-token-url', 'ws-request', 'ws-json', 'item_id_type', 'schedule', 'error_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('list_input', 'isbn', 'placeholders', 'shuffle_items', 'disable_links', 'slick_override', 'settings', 'ebooks', 'alt', 'wsapi', 'ws-key', 'ws-secret', 'ws-token-url', 'ws-request', 'ws-json', 'item_id_type', 'schedule', 'error_message');

