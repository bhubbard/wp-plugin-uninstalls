-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autopaging_post_types', 'autopaging_paging_type', 'autopaging_num_pages', 'autopaging_num_words');

