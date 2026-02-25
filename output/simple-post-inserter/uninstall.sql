-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spi-paragraph-choice', 'spi-middle-choice', 'spi-insert-content', 'spi-post-type', 'spi-post-category', 'spi-post-id');

