-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pud_max_page', 'pud_default_author', 'pud_page_status', 'pud_page_visibility', 'pud_tour_generator', 'pud_tour_manage', 'pud_tour_placeholder');

