-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helion_wyszukiwarka_template', 'helion_bookstore_template_main', 'helion_bookstore_template_category', 'helion_bookstore_template_book', 'helion_partner_id', 'helion_bookstores', 'helion_bookstore_ksiegarnia', 'helion_bookstore_slug', 'helion_bookstore_template_serie', 'helion_current_cache_size', 'helion_cache_user', 'helion_wyszukiwarka_slug');
DELETE FROM wp_options WHERE option_name LIKE 'helion_serie_%';
DELETE FROM wp_options WHERE option_name LIKE 'helion_kategorie_%';

